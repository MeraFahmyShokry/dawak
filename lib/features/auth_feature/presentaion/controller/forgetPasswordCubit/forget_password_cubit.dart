import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../injection/injection.dart';
import '../../../domain/repository/auth_repository.dart';

part 'forget_password_state.dart';
part 'forget_password_cubit.freezed.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() :
      repository=getIt<AuthRepository>(),
        super(ForgetPasswordState.initial(
      forgetKey: GlobalKey<FormState>(),
      passwordKey: GlobalKey<FormState>()
  ));
final AuthRepository repository;
  void setPhoneNumber (String? phoneNumber){
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  void setNewPassword (String? newPassword){
    emit(state.copyWith(newPassword: newPassword));
  }

  /// forget Password request
  Future<bool> forgetPassword(String otp) async {
    await EasyLoading.show(indicator: CircularProgressIndicator());
    var result = await repository.forgetPassword(
      phoneNumber: state.phoneNumber??"",
      newPassword: state.newPassword??"",
      otp: otp
    );
    await EasyLoading.dismiss();
    return result.fold(
          (failure) {
        return false;
      },
          (result) {
        return true;
      },
    );
  }
}
