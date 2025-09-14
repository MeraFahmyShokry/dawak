import 'dart:convert';
import 'dart:io';

import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/domain/entity/enums/server_error_code.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/core/domain/repositories/base_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class BaseRepositoryImpl implements BaseRepository {
  // Logger for logging errors and messages
  final Logger _logger;

  // Constructor that injects a Logger instance
  BaseRepositoryImpl(this._logger);

  @override
  // Executes a request with error handling and logging
  Future<Either<Failure, T>> request<T>(
      FutureEitherFailureOrData<T> body) async {
    try {
      // Execute the request body and return the result
      return await body();
    } catch (e) {
      // Handle DioExceptions (network-related errors)
      if (e is DioException) {
        // const connectionTimeout = 'connectionTimeout';
        if (e.error is SocketException) {
          // Return a NetworkFailure for socket errors
          return left(NetworkFailure());
        } else if (e.type == DioExceptionType.connectionTimeout) {
          return left(
            NetworkFailure(
              connectionTimeOut: true,
            ),
          );
        }
        // Log DioException details
        _logger.e(e.message, error: e, stackTrace: e.stackTrace);
        var message = ''; // Error message from server
        var errorCode = ServerErrorCode.serverError; // Default error code

        if (e.response != null) {
          // Extract error code from HTTP status code
          errorCode = _getErrorCode(e.response!.statusCode ?? 500);

          try {
            // Parse error message from response domain if possible
            final responseData = e.response!.data is String
                ? jsonDecode(e.response!.data)
                : e.response!.data;

            _logger.i(
              ' Request ${e.requestOptions.path}\n method ${{
                e.requestOptions.method
              }} \n data ${e.requestOptions.data} \n queryParameters ${e.requestOptions.queryParameters} \n header ${e.requestOptions.headers}',
            );
            // print("messagemessagemessagemessagemessage${responseData}");
            late BaseResponseModel baseResponse;

            if (responseData["success"] == false) {
              message = responseData['error']["message"].toString();
            } else if (responseData["error"] != null) {
              message = responseData["error"].toString();
              print("messagemessagemessagemessagemessage${message}");
            } else if (responseData["detail"] != null) {
              message = responseData["detail"].toString();
              print("messagemessagemessagemessagemessage${message}");
            } else if (responseData["errors"] != null) {
              // message = responseData["errors"];
              if (responseData["errors"].isNotEmpty) {
                String? firstError = (responseData["errors"] as Map)
                    .values
                    .expand((e) => e as List) // تحويل القيم إلى قائمة واحدة
                    .firstOrNull;
                print("xxxxxxxxxsdfsazdfs ${firstError}");
                message = firstError.toString();
              }
            } else if (responseData["message"] != null) {
              message = responseData["error"].toString();
              print("messagemessagemessagemessagemessage${message}");
            } else {
              baseResponse =
                  BaseResponseModel.fromJson(responseData, (_) => null);

              message = baseResponse.value ?? '';
            }
            print("messagemessagemessagemessagemessage${message}");
          } catch (e) {
            // Return ServerFailure with available information
            return left(ServerFailure(errorCode: errorCode, message: message));
          }
        }
        // Return ServerFailure with extracted error details
        return left(ServerFailure(errorCode: errorCode, message: message));
      } else if (e is Error) {
        // Log other errors
        _logger.e(e.toString(), error: e, stackTrace: e.stackTrace);
      } else {
        // Log unexpected errors
        _logger.e(e);
      }

      // Return ServerFailure as a fallback for unhandled errors
      return left(ServerFailure(errorCode: ServerErrorCode.serverError));
    }
  }

  // Maps HTTP status codes to ServerErrorCodes
  ServerErrorCode _getErrorCode(int statusCode) {
    switch (statusCode) {
      case 401:
        return ServerErrorCode.unauthenticated;
      case 404:
        return ServerErrorCode.notFound;
      case 403:
        return ServerErrorCode.forbidden;
      case 422:
        return ServerErrorCode.wrongInput;
      default:
        return ServerErrorCode.serverError;
    }
  }
}
