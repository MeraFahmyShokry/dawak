import 'package:flutter/material.dart';

import '../../../../features/auth_feature/domain/model/user_model/app_user.dart';
import '../../../../features/auth_feature/domain/model/user_model/user_model.dart';

abstract class ILocalPreference {
  late final ValueNotifier<AppUser?> appUser;

  void initialize();

  void saveAppUser(AppUser? newAppUser);

  void updateAppUser(AppUser? newAppUser);

  // String? get token;
  //
  // set token(String? token);
  //
  // bool? get enableNotification;
  //
  // set enableNotification(bool? token);
  //
  // String? get locale;
  //
  // set locale(String? locale);
  //
  bool? get skipIntro;

  set skipIntro(bool? skipIntro);
  //
  // late final ValueNotifier<int> notificationCount;
  //
  // void updateNotificationCount(int count);
  //
  // Future<bool?> clear();
  //
  // Future<void> removeAuthPrefs();
}
