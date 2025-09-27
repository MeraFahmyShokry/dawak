part of 'otp_verification_cubit.dart';

@freezed
class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({
    required OtpVerificationStatus status,
    String? otp,
    required GlobalKey<FormState> otpKey
}) = _OtpVerificationState;
}

@freezed
class  OtpVerificationStatus with _$OtpVerificationStatus {
  const factory OtpVerificationStatus.initial() = Initial;

  const factory OtpVerificationStatus.sendOtpLoading() = SendOtpLoading;

  const factory OtpVerificationStatus.sendOtpFailure() = SendOtpFailure;

  const factory OtpVerificationStatus.sendOtpSuccess() = SendOtpSuccess;

  const factory OtpVerificationStatus.validateOtpLoading() = ValidateOtpLoading;

  const factory OtpVerificationStatus.validateOtpFailure() = ValidateOtpFailure;

  const factory OtpVerificationStatus.validateOtpSuccess() = ValidateOtpSuccess;

}