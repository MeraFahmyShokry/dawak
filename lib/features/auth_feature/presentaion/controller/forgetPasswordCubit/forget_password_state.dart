part of 'forget_password_cubit.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial({
    required GlobalKey<FormState> forgetKey,
    required GlobalKey<FormState> passwordKey,
    String? phoneNumber,
    String? newPassword,
}) = _Initial;
}
