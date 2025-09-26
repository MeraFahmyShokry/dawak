import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/registrationCubit/registration_cubit.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/otp/otp_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/helper/validator.dart';
import '../../../../../gen/locale_keys.g.dart';
import '../../widgets/SignUpText.dart';
import '../../widgets/create_account_custom_bar.dart';
import '../login/login_view.dart';

class CreatePasswordView extends StatelessWidget {
  const CreatePasswordView({super.key, required this.registerCubit});
final RegistrationCubit registerCubit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      body: BlocProvider.value(
        value: registerCubit,
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            return Padding(
              padding: 16.padHorizontal,
              child: Column(
                children: [
                  CreateAccountCustomBar(
                    fillItems: 4,
                  ),
                  24.verticalSpace,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Form(
                        // key: state.registerKey,
                        child: Column(
                          children: [
                            CustomTextField(
                              isShowBorder: true,
                              fillColor: AppColors.white,
                              showTitle: true,
                              isPassword: true,
                              titleText: "${LocaleKeys.password.tr()} *",
                              hintText: LocaleKeys.enterYourPassword.tr(),
                              onValidate: Validator.validatePassword,
                              onChanged: (value){
                                context.read<RegistrationCubit>().setPassword(value);
                              },
                            ),
                            16.verticalSpace,
                            CustomTextField(
                              isShowBorder: true,
                              fillColor: AppColors.white,
                              showTitle: true,
                              isPassword: true,
                              titleText: "${LocaleKeys.confirmPassword.tr()} *",
                              hintText: LocaleKeys.enterYourPassword.tr(),
                              onValidate: (value)=>Validator.validateConfirmPassword(value, state.registerModel.password),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  24.verticalSpace,
                  CustomButton(
                    width: double.infinity,
                    onPressed: () {
                      // context.read<RegistrationCubit>().initThird();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (con) => OtpView(callBack: (){

                          },
                            phoneNumber: state.registerModel.phoneNumber??"",
                          ),
                        ),
                      );
                    },
                    child: TextApp(
                      LocaleKeys.next.tr(),
                      style: context.textStyleButton,
                    ),
                  ),
                  24.verticalSpace,
                  SignUpText(
                    text: LocaleKeys.have_an_account.tr(),
                    actionText: LocaleKeys.signIn.tr(),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                            (Route<dynamic> route) => false,
                      );
                    },
                  ),
                  16.verticalSpace
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
