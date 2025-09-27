import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/forgt_password/create_new_password_view.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/presentation/widget/custom_app_bar_new.dart';
import '../../../../../core/presentation/widget/on_tap.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/helper/validator.dart';
import '../../controller/forgetPasswordCubit/forget_password_cubit.dart';
import '../otp/otp_view.dart';

//@RoutePage()
class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
          appBar: CustomAppBarNew(
            title: "Forget Password", isHaveBackButton: true,),
          body: Padding(
            padding: 16.padHorizontal,
            child: BlocProvider(
              create: (context) => ForgetPasswordCubit(),
              child: BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
                builder: (context, state) {
                  return Form(
                    key: state.forgetKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text("Enter your phone number to send OTP code",
                                style: AppTextTheme.bodySmall,),
                              16.verticalSpace,
                              CustomTextField(
                                isShowBorder: true,
                                inputType: TextInputType.phone,
                                fillColor: AppColors.white,
                                showTitle: true,
                                titleText: "${LocaleKeys.phoneNumber.tr()} *",
                                hintText: LocaleKeys.enterPhoneNumber.tr(),
                                onValidate: Validator.validate,
                                onChanged: (value) {
                                  context.read<ForgetPasswordCubit>().setPhoneNumber(value);
                                },
                              ),
                            ],
                          ),
                        ),

                        24.verticalSpace,
                        CustomButton(
                          width: double.infinity,
                          onPressed: () {
                            if(state.forgetKey.currentState!.validate())
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (con) =>
                                        OtpView(phoneNumber:state.phoneNumber??"", callBack: (otp) {
                                          NavigationHelper.push(context, CreateNewPasswordView(
                                            cubit: context.read<ForgetPasswordCubit>(),
                                            otp: otp??"",
                                          ));
                                        },),
                                  ),
                                );
                              }
                          },
                          child: TextApp(
                            LocaleKeys.next.tr(),
                            style: context.textStyleButton,
                          ),
                        ),
                        16.verticalSpace,
                      ],
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
