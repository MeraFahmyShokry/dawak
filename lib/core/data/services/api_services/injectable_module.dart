import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../injection/injection.dart';
import '../shared_prefs/i_local_preference.dart';
import 'package:pretty_dio_logger/src/pretty_dio_logger.dart';

@module
abstract class InjectableModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPref => SharedPreferences.getInstance();

  @lazySingleton
  Dio get dioInstance {
    final dio = Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          // if(getIt<ILocalPreference>().appUser.value?.token!=null)
          // 'Authorization':'Bearer ${getIt<ILocalPreference>().appUser.value?.token}'
        },
        validateStatus: (statusCode) {
          if (statusCode != null) {
            if (200 <= statusCode && statusCode < 300) {
              return true;
            } else {
              return false;
            }
          } else {
            return false;
          }
        },
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          print("sdsasdsasd");
          Map<String, String> headers;

          // final failureOrToken = getIt<AuthCubit>().getCurrentUser();
          // final token = (await failureOrToken)?.data?.access;

          // if (token != null) {
          //   headers = {'Authorization': 'Bearer ${token}'};
          //   request.headers.addAll(headers);
          // }
          request
            ..sendTimeout = (request.data is FormData)
                ? const Duration(milliseconds: 30000000)
                : const Duration(milliseconds: 30000000)
            ..connectTimeout = const Duration(milliseconds: 30000000)
            ..receiveTimeout = const Duration(milliseconds: 30000000);

          return handler.next(request);
        },
        onError: (DioException err, ErrorInterceptorHandler handler) async {
          print("asdadad#{");
          if (err.response?.statusCode == 401) {
            print(
                "err.response?.statusCodeerr.response?.statusCode ${err.response?.statusCode}");

            // await getIt<AuthCubit>().login(
            //     serialNumberEmail: currentUser?.value.data?.profile?.serialNumberEmail,
            //     password: currentUser?.value.password);
            // print("newAccessToken ${newAccessToken.}");
            if (getIt<ILocalPreference>().appUser.value?.token != null) {
              // إعادة المحاولة مع التوكن الجديد
              err.requestOptions.headers['Authorization'] =
                  'Bearer ${getIt<ILocalPreference>().appUser.value?.token}';
              // currentUser?.value.data?.access = newAccessToken;

              try {
                final newResponse =
                    await getIt<Dio>().fetch(err.requestOptions);
                return handler.resolve(newResponse);
              } catch (e) {
                return handler.reject(err);
              }
            }
          }
          return handler.next(err);
        },
      ),
    );
    // dio.interceptors.add(
    //   LogInterceptor(
    //       responseBody: true,
    //       requestBody: true,
    //       logPrint: (obj) {
    //         debugPrint(obj.toString());
    //       }),
    // );
    // dio.interceptors.add(CurlLoggerDioInterceptor());
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        enabled: kDebugMode,
    )
    );
    return dio;
  }

  @lazySingleton
  Logger get logger => Logger();
}
