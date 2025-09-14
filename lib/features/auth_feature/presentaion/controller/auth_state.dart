part of 'auth_cubit.dart';

class LoginState {
  final bool? isLoadingLogin;
  final Failure? isErrorLogin;
  final AppUser? successLogin;

  const LoginState({
    required this.isLoadingLogin,
    required this.isErrorLogin,
    required this.successLogin,
  });

  factory LoginState.initial() {
    return const LoginState(
      isLoadingLogin: null,
      isErrorLogin: null,
      successLogin: null,
    );
  }

  LoginState copyWith({
    bool? isLoadingLogin,
    Failure? isErrorLogin,
    AppUser? successLogin,
  }) {
    return LoginState(
      isLoadingLogin: isLoadingLogin,
      isErrorLogin: isErrorLogin ,
      successLogin: successLogin ,
    );
  }
}