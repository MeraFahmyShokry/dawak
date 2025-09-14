// // ignore_for_file: depend_on_referenced_packages
// import 'package:async/async.dart';
//
// import 'package:injectable/injectable.dart';
//
// import '../../../injection/injection.dart';
// import '../../data/services/shared_prefs/i_local_preference.dart';
// import '../../interfaces/i_token_local_repository.dart';
// import '../../interfaces/i_token_repository.dart';
// import '../../router/app_router.dart';
// import '../models/refresh_token_model.dart';
//
// enum TokenResult { failed, success, refreshedToken }
//
// @singleton
// class TokenService {
//   final ITokenRepository tokenRepository;
//   final ITokenLocalRepository tokenLocalRepository;
//
//   String? _token;
//
//   TokenService({
//     required this.tokenRepository,
//     required this.tokenLocalRepository,
//   });
//
//   Future<Result<String?>> getAccessToken() async {
//     //log("asher:::!@:");
//     //if (_token == null || _token == "") {
//     if (true) {
//       var token = await tokenLocalRepository.getToken();
//       _token = token.asValue!.value;
//       return Result.value(_token);
//     }
//
//     // if (_token != null || _token != "") {
//     //   return Result.value(_token);
//     // }
//     // return Result.error(TokenResult.failed);
//   }
//
//   Future<Result<RefreshTokenModel>> refreshTokenAsync() async {
//     Result<RefreshTokenModel> result = await tokenRepository.refreshTokenAsync();
//
//     if (result.isError) {
//       _token = null;
//       //todo edit
//       // getIt<ILocalPreference>().removeAuthPrefs().then(
//       //     (onValue) => getIt<AppRouter>().replaceAll([LoginRoute()], updateExistingRoutes: false));
//
//       //remove old token here
//       // getIt<NotificationService>().updateFcmTokenToServer(isLogout: true);
//       return Result.error(result.isError);
//     }
//
//     _token = result.asValue!.value.accessToken;
//     getIt<ILocalPreference>().saveAppUser(getIt<ILocalPreference>().appUser.value?.copyWith(
//         token: result.asValue!.value.accessToken,
//         // refreshToken: result.asValue!.value.refreshToken
//     ));
//     //set new token here (ex: SharedPreferences, local database)
//     return Result.value(result.asValue!.value);
//   }
//
//   void clearTokenAsync() {
//     _token == null;
//   }
// }
