import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/custom_app_bar_new.dart';
import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/forgt_password/forget_password_successfully_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/presentation/widget/custom_button_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_them.dart';
import '../../../../../core/utils/helper/validator.dart';
import '../../../../../gen/locale_keys.g.dart';
import '../../controller/forgetPasswordCubit/forget_password_cubit.dart';

class CreateNewPasswordView extends StatelessWidget {
  final ForgetPasswordCubit cubit;
  final String otp;
  const CreateNewPasswordView({super.key, required this.cubit, required this.otp});
  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: context.color.whiteColor,
        appBar: CustomAppBarNew(title: "New Password", isHaveBackButton: true),
        body: BlocProvider.value(
          value: cubit,
          child: BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
            builder: (context, state) {
              return Padding(
                padding: 16.padHorizontal,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Form(
                          key: state.passwordKey,
                          child: Column(
                            children: [
                              Text("Enter new password to update your password",
                                style: AppTextTheme.bodySmall,),
                              16.verticalSpace,
                              CustomTextField(
                                isShowBorder: true,
                                fillColor: AppColors.white,
                                showTitle: true,
                                isPassword: true,
                                titleText: "${LocaleKeys.password.tr()} *",
                                hintText: LocaleKeys.enterYourPassword.tr(),
                                onValidate: Validator.validatePassword,
                                onChanged: (value){
                                  context.read<ForgetPasswordCubit>().setNewPassword(value);
                                },
                              ),
                              16.verticalSpace,
                              CustomTextField(
                                isShowBorder: true,
                                fillColor: AppColors.white,
                                showTitle: true,
                                isPassword: true,
                                titleText: "Re-enter New Password *",
                                hintText: LocaleKeys.enterYourPassword.tr(),
                                onValidate: (value)=>Validator.validateConfirmPassword(value, state.newPassword),
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
                        if(state.passwordKey.currentState!.validate()){
                          context.read<ForgetPasswordCubit>().forgetPassword(otp).then((value){
                            if(value)
                              {
                                NavigationHelper.pushReplacementAll(context, ForgetPasswordSuccessfullyView());
                              }
                          });
                        }

                      },
                      child: TextApp(
                        "Change Password",
                        style: context.textStyleButton,
                      ),
                    ),

                    16.verticalSpace
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
