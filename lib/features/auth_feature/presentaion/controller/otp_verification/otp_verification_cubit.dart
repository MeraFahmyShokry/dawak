import 'package:bloc/bloc.dart';
import 'package:clean_arc/features/auth_feature/domain/repository/otp_repository.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verification_state.dart';

part 'otp_verification_cubit.freezed.dart';

class OtpVerificationCubit extends Cubit<OtpVerificationState> {
  OtpVerificationCubit()
    : repository = getIt<OtpRepository>(),
      super( OtpVerificationState(
          status: Initial(),
          otpKey: GlobalKey<FormState>()
      ));

  final OtpRepository repository;

  void setOtp (String? otp){
    emit(state.copyWith(otp: otp));
  }

  Future<void> sendOtp(String phoneNumber) async {
    emit(state.copyWith(status: SendOtpLoading()));
    var result = await repository.sendOtp(phoneNumber: phoneNumber);
    result.fold(
      (failure) => emit(state.copyWith(status: SendOtpFailure())),
      (result) => emit(state.copyWith(status: SendOtpSuccess())),
    );
  }

  Future<bool> validateOtp(String phoneNumber) async {
    emit(state.copyWith(status: ValidateOtpLoading(),));
    var result = await repository.validateOtp(
      phoneNumber: phoneNumber,
      otp: state.otp??"",
    );
    return result.fold(
      (failure) {
        emit(state.copyWith(status: ValidateOtpFailure()));
        return false;
      },
      (result) {
        emit(state.copyWith(status: ValidateOtpSuccess()));
        return true;
      },
    );
  }
}
