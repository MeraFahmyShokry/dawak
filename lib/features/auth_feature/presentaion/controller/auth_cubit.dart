import 'dart:convert';
import 'dart:developer';

import 'package:clean_arc/core/data/services/shared_prefs/i_local_preference.dart';
import 'package:clean_arc/core/data/services/shared_prefs/shared_pref.dart';
import 'package:clean_arc/core/data/services/shared_prefs/shared_prefs_key.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/features/auth_feature/domain/model/user_model/app_user.dart';
import 'package:clean_arc/features/auth_feature/domain/model/user_model/user_model.dart';
import 'package:clean_arc/features/auth_feature/domain/repository/auth_repository.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.repository)
      : localPreference = getIt<ILocalPreference>(),
        super(LoginState.initial());

  final AuthRepository repository;
  final ILocalPreference localPreference;

  TextEditingController serialNumberEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(state.copyWith(
      isLoadingLogin: true,
      isErrorLogin: null,
      successLogin: null,
    ));

    final result = await repository.login(
      serialNumberEmail: serialNumberEmailController.text,
      password: passwordController.text,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
            isLoadingLogin: false, isErrorLogin: failure, successLogin: null));
      },
      (result) async {
        localPreference.saveAppUser(result);
        log("getCurrentUser:: ${localPreference.appUser.value?.toJson()}");
        await getCurrentUser();
      },
    );
  }

  ///======save UserData =====
  // Future<void> setCurrentUser(Map<String, dynamic>? jsonData,
  //     {required String password,
  //     // required String token,
  //     required bool rememberMe}) async {
  //   try {
  //     if (jsonData != null) {
  //       Map<String, dynamic> currentUserJson = jsonData;
  //       currentUserJson['password'] = password;
  //       currentUserJson['rememberMe'] = rememberMe;
  //       // currentUserJson['token'] = token;
  //       await SharedPref.setString(
  //         PrefKeys.currentUser,
  //         json.encode(jsonData),
  //       );
  //       currentUser?.value = UserModel.fromJson(jsonData);
  //       getCurrentUser();
  //       emit(state);
  //     } else {
  //       currentUser = null;
  //     }
  //   } catch (e) {
  //     throw new Exception(e);
  //   }
  // }

  Future<void> getCurrentUser() async {
    log("getCurrentUser:: ${localPreference.appUser.value?.token}");
    log("getCurrentUser:: ${localPreference.appUser.value?.toJson()}");
    if (localPreference.appUser.value?.token != null) {
      final result = await repository.getCurrentUser();

      result.fold(
        (failure) {
          emit(state.copyWith(
              isLoadingLogin: false,
              isErrorLogin: failure,
              successLogin: null));
        },
        (result) async {
          localPreference.saveAppUser(localPreference.appUser.value
              ?.copyWithFromObject(appUser: result));
          emit(state.copyWith(
              isLoadingLogin: false, isErrorLogin: null, successLogin: result));
        },
      );
    }
  }
}
