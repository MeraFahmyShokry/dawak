import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../features/auth_feature/domain/model/user_model/app_user.dart';
import '../../../../features/auth_feature/domain/model/user_model/user_model.dart';
import '../../constants/constants.dart';
import 'i_local_preference.dart';

@Singleton(as: ILocalPreference)
class LocalPreferenceImpl extends ILocalPreference {
  SharedPreferences? sharedPreferences;

  LocalPreferenceImpl() {
    initialize();
  }

  @override
  Future<void> initialize() async {
    sharedPreferences = await SharedPreferences.getInstance();
    appUser = ValueNotifier<AppUser?>(
      (sharedPreferences?.getString(AppStrings.prefKeys.appUserKey) != null)
          ? AppUser.fromJson(
              json.decode(sharedPreferences!.getString(AppStrings.prefKeys.appUserKey)!))
          : null,
    );
    // notificationCount = ValueNotifier<int>(0);
    log("!@!@!@!TESTT");
  }

  @override
  void saveAppUser(AppUser? newAppUser) {
    log("appUser${json.encode(newAppUser?.toJson())}");
    newAppUser == null
        ? sharedPreferences?.remove(AppStrings.prefKeys.appUserKey)
        : sharedPreferences?.setString(
            AppStrings.prefKeys.appUserKey, json.encode(newAppUser.toJson()));
    log("appUser${json.encode(newAppUser?.toJson())}");
    log("appUser^^^^${sharedPreferences?.getString(AppStrings.prefKeys.appUserKey)}");
    log("appUser1${appUser.value?.token}");

    appUser.value = newAppUser;
    log("appUser2${appUser.value?.token}");
  }

  @override
  void updateAppUser(AppUser? newAppUser) {
    appUser.value = newAppUser;
    saveAppUser(newAppUser);
  }

  // @override
  // String? get token => sharedPreferences?.getString(AppStrings.prefKeys.authTokenKey);
  //
  // @override
  // set token(String? token) => token == null
  //     ? sharedPreferences?.remove(AppStrings.prefKeys.authTokenKey)
  //     : sharedPreferences?.setString(AppStrings.prefKeys.authTokenKey, token);
  //
  // @override
  // bool? get enableNotification => sharedPreferences?.getBool(AppStrings.prefKeys.enableNotification);
  //
  // @override
  // set enableNotification(bool? enable) => enable == null
  //     ? sharedPreferences?.remove(AppStrings.prefKeys.enableNotification)
  //     : sharedPreferences?.setBool(AppStrings.prefKeys.enableNotification, enable);
  //
  // @override
  // String? get locale => sharedPreferences?.getString(AppStrings.prefKeys.localeKey);
  //
  // @override
  // set locale(String? locale) {
  //   locale == null
  //       ? sharedPreferences?.remove(AppStrings.prefKeys.localeKey)
  //       : sharedPreferences?.setString(AppStrings.prefKeys.localeKey, locale);
  // }
  //
  @override
  bool? get skipIntro => sharedPreferences?.getBool(AppStrings.prefKeys.skipIntroKey);

  @override
  set skipIntro(bool? skipIntro) => skipIntro == null
      ? sharedPreferences?.remove(AppStrings.prefKeys.skipIntroKey)
      : sharedPreferences?.setBool(AppStrings.prefKeys.skipIntroKey, skipIntro);
  //
  // @override
  // Future<bool> clear() {
  //   return sharedPreferences?.clear() ?? Future.value(false);
  // }
  //
  // @override
  // Future<void> removeAuthPrefs() async {
  //   appUser.value = null;
  //   sharedPreferences?.remove(AppStrings.prefKeys.appUserKey);
  //   sharedPreferences?.remove(AppStrings.prefKeys.authTokenKey);
  //   sharedPreferences?.setBool(AppStrings.prefKeys.skipIntroKey, true);
  //
  //   // remove all other prefs except these
  //   if (sharedPreferences == null) {
  //     log("SharedPreferences not initialized");
  //     return;
  //   }
  //
  //   const keysToKeep = AppTourPref.tourList;
  //   final allKeys = sharedPreferences!.getKeys();
  //
  //   log("Starting preference cleanup Keys to keep: $keysToKeep");
  //
  //   for (final key in allKeys) {
  //     if (!keysToKeep.contains(key)) {
  //       await sharedPreferences!.remove(key);
  //       log("Removed preference: $key");
  //     } else {
  //       log("Kept preference: $key");
  //     }
  //   }
  //
  //   log("Preference cleanup complete. Remaining keys: ${sharedPreferences!.getKeys()}");
  // }
  //
  // @override
  // void updateNotificationCount(int count) {
  //   notificationCount.value = count;
  // }
}
