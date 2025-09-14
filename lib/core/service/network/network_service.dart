// import 'dart:developer';
//
// import 'package:async/async.dart';
// import 'package:clean_arc/core/service/network/token_service.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
//
// import '../../../injection/injection.dart';
// import '../../data/utill/configration.dart';
// import '../../interfaces/i_connection_service.dart';
// import '../../utils/helper/error_handler.dart';
// import 'interceptors/auth_interceptor.dart';
// import 'interceptors/connection_interceptor.dart';
//
// @singleton
// class NetworkService {
//   final TokenService tokenService;
//   late _NetworkClient _networkClient;
//
//   NetworkService({required this.tokenService}) {
//     _networkClient = _NetworkClient(tokenService);
//   }
//
//   Future<Result<Response>> getAsync(
//       {required String url, Map<String, dynamic>? queryParameters}) async {
//     try {
//       log("1221222aaa");
//
//       var response = await _networkClient.getAsync(url: url, queryParameters: queryParameters);
//       log("1221222bbbb");
//
//       var isError = _errorMessageHandler(response.data);
//       if (isError != '') {
//         return Result.error(isError);
//       }
//       return Result.value(response);
//     } on DioException catch (error) {
//       String errorMsg = ErrorHandler.handleErrorMessage(error);
//       return Result.error(errorMsg);
//     } catch (error, stacktrace) {
//       log('$error', stackTrace: stacktrace);
//       //TODO Add handling for errors caught so it doesn't reach the next layer
//       return Result.error(error);
//     }
//   }
//
//   Future<Result<Response>> postAsync({
//     required String url,
//     Map<String, dynamic>? body,
//     Map<String, dynamic>? queryParameters,
//   }) async {
//     try {
//       var response = await _networkClient.postAsync(
//         url: url,
//         body: body,
//         queryParameters: queryParameters,
//       );
//       var isError = _errorMessageHandler(response.data);
//       if (isError != '') {
//         return Result.error(isError);
//       }
//       return Result.value(response);
//     } on DioException catch (error) {
//       String errorMsg = ErrorHandler.handleErrorMessage(error);
//       return Result.error(errorMsg);
//     } catch (error, stacktrace) {
//       log('$stacktrace');
//       return Result.error(error);
//     }
//   }
//
//   Future<Result<Response>> postMultiPartFormDataAsync(
//       {required String url,
//       required ValueNotifier<double> uploadProgressNotifier,
//       required Map<String, dynamic> formMap,
//       Map<String, dynamic>? queryParameters}) async {
//     try {
//       var response = await _networkClient.postMultiPartFormDataAsync(
//           url: url,
//           uploadProgressNotifier: uploadProgressNotifier,
//           formMap: formMap,
//           queryParameters: queryParameters);
//       if (kDebugMode) print(response.toString());
//
//       var isError = _errorMessageHandler(response.data);
//       if (isError != '') {
//         return Result.error(isError);
//       }
//       return Result.value(response);
//     } on DioException catch (error) {
//       if (kDebugMode) print(error);
//       String errorMsg = ErrorHandler.handleErrorMessage(error);
//       return Result.error(errorMsg);
//     } catch (error, stacktrace) {
//       if (kDebugMode) print(error);
//       log('$stacktrace');
//       return Result.error(error);
//     }
//   }
//
//   Future<Result<Response>> putMultiPartFormDataAsync({
//     required String url,
//     required ValueNotifier<double> uploadProgressNotifier,
//     required Map<String, dynamic> formMap,
//   }) async {
//     try {
//       var response = await _networkClient.putMultiPartFormDataAsync(
//         url: url,
//         uploadProgressNotifier: uploadProgressNotifier,
//         formMap: formMap,
//       );
//       if (kDebugMode) print(response.toString());
//
//       var isError = _errorMessageHandler(response.data);
//       if (isError != '') {
//         return Result.error(isError);
//       }
//       return Result.value(response);
//     } on DioException catch (error) {
//       if (kDebugMode) print(error);
//       String errorMsg = ErrorHandler.handleErrorMessage(error);
//       return Result.error(errorMsg);
//     } catch (error, stacktrace) {
//       if (kDebugMode) print(error);
//       log('$stacktrace');
//       return Result.error(error);
//     }
//   }
//
//   Future<Result<Response>> putAsync({
//     required String url,
//     Map<String, dynamic>? body,
//     Map<String, dynamic>? queryParameters,
//     Map<String, dynamic>? headers,
//     Options? options,
//   }) async {
//     try {
//       log("525252");
//
//       var response = await _networkClient.putAsync(
//           url: url, query: queryParameters, body: body, options: options);
//       log("52525233333");
//
//       var isError = _errorMessageHandler(response.data);
//       if (isError != '') {
//         return Result.error(isError);
//       }
//       return Result.value(response);
//     } on DioException catch (error) {
//       String errorMsg = ErrorHandler.handleErrorMessage(error);
//       return Result.error(errorMsg);
//     } catch (error, stacktrace) {
//       log('$stacktrace');
//       return Result.error(error);
//     }
//   }
//
//   Future<Result<Response>> deleteAsync({
//     required String url,
//     Map<String, dynamic>? body,
//     Map<String, dynamic>? query,
//     Map<String, dynamic>? headers,
//   }) async {
//     try {
//       var response = await _networkClient.deleteAsync(url: url, query: query, body: body);
//
//       var isError = _errorMessageHandler(response.data);
//       if (isError != '') {
//         return Result.error(isError);
//       }
//       return Result.value(response);
//     } on DioException catch (error) {
//       String errorMsg = ErrorHandler.handleErrorMessage(error);
//       return Result.error(errorMsg);
//     } catch (error, stacktrace) {
//       log('$stacktrace');
//       return Result.error(error);
//     }
//   }
//
//   String _errorMessageHandler(Map<String, dynamic> decodedResponse) {
//     if (decodedResponse['isError'] == false) return '';
//     if (decodedResponse['result'] != null &&
//         decodedResponse['result'] is Map &&
//         decodedResponse['result']['message'] != null) {
//       return decodedResponse['result']['message'];
//     } else if (decodedResponse['message'] != null) {
//       return decodedResponse['message'];
//     }
//     return '';
//   }
// }
//
// class _NetworkClient {
//   final TokenService tokenService;
//   late Dio _client;
//
// //getIt<AppRouter>().navigatorKey.currentState?.overlay?.context.locale.languageCode == const Translations().localeEN?'en':'ar'
//   _NetworkClient(this.tokenService) {
//     _client = Dio(
//       BaseOptions(
//         baseUrl: baseUrl,
//         headers: {
//           'accept': 'text/plain',
//         },
//         contentType: 'application/json',
//         receiveTimeout: const Duration(milliseconds: 100000),
//       ),
//     );
//     _client.interceptors.addAll([
//       AuthInterceptor(tokenService),
//       ConnectionInterceptor(getIt<IConnectionService>()),
//       PrettyDioLogger(
//           requestHeader: true,
//           requestBody: true,
//           responseBody: true,
//           responseHeader: true,
//           compact: false)
//     ]);
//   }
//
//   // TODO implement when cache is needed
//   // static CacheOptions cacheOptions = CacheOptions(
//   //   store: MemCacheStore(),
//   //   hitCacheOnErrorExcept: [],
//   //   allowPostMethod: true,
//   // );
//
//   Future<Response> getAsync({required String url, Map<String, dynamic>? queryParameters}) async {
//     return await _client.get<dynamic>(url, queryParameters: queryParameters);
//   }
//
//   Future<Response> postAsync(
//       {required String url, dynamic body, Map<String, dynamic>? queryParameters}) async {
//     return await _client.post<dynamic>(url, data: body, queryParameters: queryParameters);
//   }
//
//   Future<Response> postMultiPartFormDataAsync(
//       {required String url,
//       required ValueNotifier<double> uploadProgressNotifier,
//       required Map<String, dynamic> formMap,
//       Map<String, dynamic>? queryParameters}) async {
//     final cancelToken = CancelToken();
//     var formData = FormData.fromMap(formMap);
//
//     return await _client.post<dynamic>(url,
//         data: formData,
//         queryParameters: queryParameters,
//         options: Options(contentType: 'multipart/form-data'),
//         onSendProgress: (int send, int total) {
//       final progress = (send / total) * 100;
//       uploadProgressNotifier.value = progress;
//     }, cancelToken: cancelToken);
//   }
//
//   Future<Response> putMultiPartFormDataAsync({
//     required String url,
//     required ValueNotifier<double> uploadProgressNotifier,
//     required Map<String, dynamic> formMap,
//   }) async {
//     final cancelToken = CancelToken();
//     var formData = FormData.fromMap(formMap);
//
//     return await _client
//         .put<dynamic>(url, data: formData, options: Options(contentType: 'multipart/form-data'),
//             onSendProgress: (int send, int total) {
//       final progress = (send / total) * 100;
//       uploadProgressNotifier.value = progress;
//     }, cancelToken: cancelToken);
//   }
//
//   Future<Response> putAsync({
//     required String url,
//     required dynamic body,
//     Map<String, dynamic>? query,
//     Map<String, dynamic>? headers,
//     Options? options,
//   }) async {
//     return await _client.put<dynamic>(
//       url,
//       data: body,
//       queryParameters: query,
//       options: options ??
//           Options(
//             headers: _client.options.headers..addAll(headers ?? <String, dynamic>{}),
//           ),
//     );
//   }
//
//   Future<Response> deleteAsync({
//     required String url,
//     Map<String, dynamic>? body,
//     Map<String, dynamic>? query,
//     Map<String, dynamic>? headers,
//   }) async {
//     return await _client.delete<dynamic>(
//       url,
//       data: body,
//       queryParameters: query,
//       options: Options(
//         headers: _client.options.headers..addAll(headers ?? <String, dynamic>{}),
//       ),
//     );
//   }
// }
