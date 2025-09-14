// import 'dart:developer';
// import 'dart:io';
// import 'package:async/async.dart';
// import 'package:dio/dio.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../models/refresh_token_model.dart';
// import '../token_service.dart';
//
// @singleton
// class AuthInterceptor extends QueuedInterceptor {
//   final TokenService _tokenService;
//
//   AuthInterceptor(this._tokenService);
//
//   @override
//   Future onError(DioException err, ErrorInterceptorHandler handler) async {
//     log("unauthorized::Asher:1:");
//
//     if (err.response == null ||
//         (err.response!.statusCode != HttpStatus.unauthorized &&
//             err.response!.statusCode != HttpStatus.forbidden)) {
//       // if (getIt<AppRouter>().stack.last.name == 'ServerErrorRoute') return null;
//       log("unauthorized::Asher:333:");
//       handler.reject(err);
//
//       // return getIt<AppRouter>().replace(
//       //   ServerErrorRoute(
//       //     currentRoute: getIt<AppRouter>().stack.last,
//       //   ),
//       // );
//     }
//
//     String accessToken;
//     var tokenResult = await _tokenService.getAccessToken();
//     if (tokenResult.isError) handler.reject(err);
//     accessToken = tokenResult.asValue?.value ?? '';
//     var authHeader = 'Bearer $accessToken';
//
//     ///update token by refreshing it
//     ///so what else ? that the refresh token already refreshed => authHeader will not equal error.response.header
//     if (authHeader == err.response?.requestOptions.headers['Authorization']) {
//       Result<RefreshTokenModel> refreshTokenResult = await _tokenService.refreshTokenAsync();
//       log("unauthorized::Asher:8:");
//       if (refreshTokenResult.isError) {
//         _tokenService.clearTokenAsync();
//         var token = await _tokenService.getAccessToken();
//         accessToken = token.asValue?.value ?? '';
//       } else {
//         accessToken = refreshTokenResult.asValue?.value.accessToken ?? "";
//       }
//     }
//
//     final RequestOptions requestOptions = err.response!.requestOptions;
//     requestOptions.headers['Authorization'] = 'Bearer $accessToken';
//     final options = Options(
//       method: requestOptions.method,
//       headers: requestOptions.headers,
//     );
//
//     final Dio dioRefresh = Dio(
//       BaseOptions(baseUrl: requestOptions.baseUrl),
//     );
//     try {
//       final response = await dioRefresh.request<dynamic>(
//         requestOptions.path,
//         data: requestOptions.data,
//         queryParameters: requestOptions.queryParameters,
//         options: options,
//       );
//       log("unauthorized::Asher:10:");
//       return handler.resolve(response);
//     } on DioException catch (e) {
//       log("unauthorized::Asher:11:");
//       return handler.reject(e);
//     }
//   }
//
//   @override
//   Future onResponse(Response response, ResponseInterceptorHandler handler) async {
//     log("HHHHHHHaaaa!!!!!");
//     log("statusCode ${response.statusCode}");
//     String accessToken;
//
//     // Check if the response status code is 500
//     // if ((response.statusCode ?? 0) >= 500) {
//     //   if (getIt<AppRouter>().stack.last.name == 'ServerErrorRoute') return null;
//     //
//     //   return getIt<AppRouter>().replace(
//     //     ServerErrorRoute(
//     //       currentRoute: getIt<AppRouter>().stack.last,
//     //     ),
//     //   );
//     // } else
//       if ((response.statusCode ?? 0) == 401) {
//       log("HHHHHHHaaaa");
//
//       Result<RefreshTokenModel> refreshTokenResult = await _tokenService.refreshTokenAsync();
//       log("unauthorized::Asher:8:");
//       if (refreshTokenResult.isError) {
//         _tokenService.clearTokenAsync();
//         var token = await _tokenService.getAccessToken();
//         accessToken = token.asValue?.value ?? '';
//       } else {
//         accessToken = refreshTokenResult.asValue?.value.accessToken ?? "";
//       }
//
//       final RequestOptions requestOptions = response.requestOptions;
//       requestOptions.headers['Authorization'] = 'Bearer $accessToken';
//       final options = Options(
//         method: requestOptions.method,
//         headers: requestOptions.headers,
//       );
//
//       final Dio dioRefresh = Dio(
//         BaseOptions(baseUrl: requestOptions.baseUrl),
//       );
//       try {
//         final response = await dioRefresh.request<dynamic>(
//           requestOptions.path,
//           data: requestOptions.data,
//           queryParameters: requestOptions.queryParameters,
//           options: options,
//         );
//         log("unauthorized::Asher:10:");
//         return handler.resolve(response);
//       } on DioException catch (e) {
//         log("unauthorized::Asher:11:");
//         return handler.reject(e);
//       }
//     }
//     // Pass the response to the next interceptor or the final handler
//     handler.next(response);
//   }
//
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
//     Result<String?> tokenResult = await _tokenService.getAccessToken();
//
//     if (tokenResult.isError) return handler.next(options);
//
//     var accessToken = tokenResult.asValue!.value;
//     // String? lang =
//     //     getIt<AppRouter>().navigatorKey.currentState?.overlay?.context.locale.languageCode;
//     int environment = 1; // 1 for mobile 0 for ERP ( web )
//
//     log("accessToken:::$accessToken");
//     // log("language:::$lang");
//     log("environment:::$environment");
//
//     options.headers['Authorization'] = 'Bearer $accessToken';
//     // options.headers['language'] = lang;
//     options.headers['environment'] = environment;
//
//     return handler.next(options);
//   }
// }
