// import 'package:dio/dio.dart';
//
// import '../../../../injection/injection.dart';
// import '../../../interfaces/i_connection_service.dart';
// import '../../../router/app_router.dart';
//
// class ConnectionInterceptor extends Interceptor {
//   final IConnectionService connectionService;
//
//   ConnectionInterceptor(this.connectionService);
//
//   @override
//   Future onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     var connectivityResult = await connectionService.checkConnection();
//     if (connectivityResult == false) {
//       // Fluttertoast.showToast(
//       //   msg: '${getIt<AppRouter>().stack.last}',
//       //   toastLength: Toast.LENGTH_SHORT,
//       //   backgroundColor: Colors.grey,
//       //   gravity: ToastGravity.BOTTOM,
//       // );
//       if (getIt<AppRouter>().stack.last.name == 'OfflineInternetRoute') {
//         return null;
//       }
// // todo edit
//       // return getIt<AppRouter>().replace(
//       //   OfflineInternetRoute(currentRoute: getIt<AppRouter>().stack.last),
//       // );
//     }
//     return super.onRequest(options, handler);
//   }
//
// // @override
// // Future onError(DioException err, ErrorInterceptorHandler handler) async {
// //   log("erorrrrrrrrCon:");
// //
// //
// //   if ((err.response?.statusCode??0)>=500) {
// //     if(getIt<AppRouter>().stack.last.name=='ServerErrorRoute')return null;
// //
// //     return getIt<AppRouter>().replace(ServerErrorRoute(
// //         currentRoute:getIt<AppRouter>().stack.last ,
// //         ),);
// //   }
// //    else if ((err.response?.statusCode??0)==401) {
// //
// //   }
// //   else {
// //     // Fluttertoast.showToast(
// //     //   msg: 'An error occurred: ${err.message}',
// //     //   toastLength: Toast.LENGTH_SHORT,
// //     //   backgroundColor: Colors.grey,
// //     //   gravity: ToastGravity.BOTTOM,
// //     // );
// //   }
// //   return super.onError(err, handler);
// // }
// //
// // @override
// // Future onResponse(Response response, ResponseInterceptorHandler handler) async{
// //   // Check if the response status code is 500
// //   if ((response.statusCode??0)>=500) {
// //     if(getIt<AppRouter>().stack.last.name=='ServerErrorRoute')return null;
// //
// //     return getIt<AppRouter>().replace(ServerErrorRoute(
// //       currentRoute:getIt<AppRouter>().stack.last ,
// //     ),);
// //   }
// //   else if ((response.statusCode??0)==401) {
// //     log("HHHHHHHaaaa");
// //   }
// //   // Pass the response to the next interceptor or the final handler
// //   handler.next(response);
// // }
// }
