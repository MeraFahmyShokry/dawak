import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class ErrorHandler {
  //TODO Add localization for error messages
  static String handleErrorMessage(DioException error) {
    // if (error.response != null &&
    //     error.response!.statusCode == HttpStatus.unauthorized) {
    //   return "Problem authenticating user credentials";
    // } else
    if (error.response != null && error.response!.statusCode == HttpStatus.internalServerError) {
      if (kDebugMode) print(error.response.toString());
      return "LocaleKeys.oopsSomethingWentWrong.tr()";
    } else if (error.response != null && error.response?.statusCode != HttpStatus.notFound) {
      String errorMsg = error.response?.data.toString() ?? "";
      return errorMsg;
    } else if (error.response?.statusCode == HttpStatus.serviceUnavailable) {
      return " LocaleKeys.youAreOffline.tr()";
    }
    return "LocaleKeys.oopsSomethingWentWrong.tr()";
  }
}
