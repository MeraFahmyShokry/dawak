import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/presentation/widget/screen_utils.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/CustomSocialSignIn.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SignUpText.dart';
import 'package:clean_arc/features/layout_feature/view/layout_view.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/helper/validator.dart';
import '../forgt_password/forget_password1_view.dart';
import '../register/select_account_type_screen.dart';

//@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const path = '/LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with ScreenUtils {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
        if (state.successLogin != null) {
          NavigationHelper.pushReplacementAll(context, LayoutView());
        } else if (state.isErrorLogin != null) {
          showError(failure: state.isErrorLogin);
        }
      }, builder: (context, state) {
        LoginCubit loginCubit = context.read<LoginCubit>();
        return OnTap(
          onTap: FocusScope.of(context).unfocus,
          child: Scaffold(
              backgroundColor: context.color.whiteColor,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: 15.padAll,
                    child: Column(
                      children: [
                        Center(
                            child: Image.asset(
                          AppImages.images.core.png.logo.path,
                          width: 177.w,
                          height: 123.h,
                          fit: BoxFit.contain,
                        )),
                        Form(
                          key: loginCubit.loginFormKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 32.h,
                              ),
                              CustomTextField(
                                controller:
                                    loginCubit.serialNumberEmailController,
                                isShowBorder: true,
                                fillColor: AppColors.white,
                                showTitle: true,
                                titleText: LocaleKeys.serialNumberEmail.tr(),
                                hintText: LocaleKeys.enterYourSerialNumberOrEmail.tr(),
                                onValidate: Validator.validate,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              CustomTextField(
                                controller: loginCubit.passwordController,
                                isShowBorder: true,
                                fillColor: context.color.whiteColor,
                                showTitle: true,
                                isPassword: true,
                                titleText: LocaleKeys.password.tr(),
                                hintText: LocaleKeys.enterYourPassword.tr(),
                                onValidate: Validator.validatePassword,
                              ),
                              OnTap(
                                onTap: () {
                                  /// navigate to forget password
                                  NavigationHelper.push(context, ForgetPasswordView());
                                },
                                child: Padding(
                                  padding: 6.padVertical + 4.padHorizontal,
                                  child: Text(
                                    LocaleKeys.forgetYourPassword.tr(),
                                    style: AppTextTheme.linkSmall
                                        .copyWith(color: AppColors.primary),
                                  ),
                                ),
                              ),
                              18.verticalSpace,
                              CustomButton(
                                width: double.infinity,
                                isLoading: loginCubit.state.isLoadingLogin,
                                onPressed: () async {
                                  if (loginCubit.loginFormKey.currentState!
                                      .validate()) {
                                    await loginCubit.login();
                                  }
                                },
                                title: LocaleKeys.login.tr(),
                              ),
                              20.verticalSpace,
                              CustomSocialSignIn(),
                              SizedBox(
                                height: 24.h,
                              ),
                              SignUpText(
                                text: LocaleKeys.haveAnAccount.tr(),
                                actionText: LocaleKeys.signUp.tr(),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectAccountTypeScreen()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        );
      }),
    );
  }
}
