
import 'package:clean_arc/core/data/constants/prefrences_keys.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'endpoints.dart';

const kNullUserId = "00000000-0000-0000-0000-000000000000";
// final coin = LocaleKeys.coin.tr();
const kClientTopic = 'academies-client';
const kGuestTopic = 'academies-guest';
// var baseUrl = BaseUrl.url;

// Widget loading = Assets.animations.loading.lottie(
//   repeat: true,
//   width: 200.h,
//   height: 200.h,
//   fit: BoxFit.contain,
// );

const kTestNetworkImage =
    "https://w0.peakpx.com/wallpaper/678/338/HD-wallpaper-sports-other-baseball-basketball-collage-football-hockey-sport.jpg";

bool isTablet({BuildContext? context}) {
  // final currContext = getIt<AppRouter>().navigatorKey.currentState?.context ?? context;
  // if (MediaQuery.of(currContext!).size.shortestSide > 600) {
  //   // log(name: "isTablet::", 'true');
  //   return true;
  // }
  // log(name: "isTablet::", 'false');
  return false;
}


class AppStrings {
  AppStrings._();

  // static Translations translations = const Translations();
  static PreferencesKeys prefKeys = const PreferencesKeys();
  // static UserTypes userTypes = const UserTypes();
  static  Endpoints urls =  const Endpoints();
}

class TranslationsConstants {
  static const String localeAR = 'ar';
  static const String localeEN = 'en';

  static bool isEnglish(BuildContext context) =>
      (context.locale.languageCode == TranslationsConstants.localeEN);

  static bool isLTR(BuildContext context) =>
      (context.locale.languageCode == TranslationsConstants.localeEN);

  static bool isContainsArabic(String text) {
    RegExp exp = RegExp(r"^[\u0621-\u064A]+");
    return exp.hasMatch(text);
  }
}
