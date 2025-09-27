import 'package:clean_arc/core/presentation/widget/screen_utils.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils/helper/validator.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/otp_verification/otp_verification_cubit.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/presentation/widget/on_tap.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_them.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key, required this.callBack, required this.phoneNumber});

  final Function(String?) callBack;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: context.color.whiteColor,
        body: Padding(
          padding: 16.padHorizontal,
          child: BlocProvider(
            create: (context) =>
                OtpVerificationCubit()..sendOtp(phoneNumber),
            child: BlocBuilder<OtpVerificationCubit, OtpVerificationState>(
              builder: (context, state) {
                return Form(
                  key: state.otpKey,
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            38.verticalSpace,
                            OnTap(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Row(
                                children: [
                                  AppImages.images.core.svg.arrowBack.svg(),
                                  8.horizontalSpace,
                                  Text(
                                    LocaleKeys.verifyAccount.tr(),
                                    style: AppTextTheme.bodyLargeSemiBold.copyWith(
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            16.verticalSpace,
                            Padding(
                              padding: 24.padHorizontal,
                              child: TextApp(
                                "Check your SMS on $phoneNumber ${LocaleKeys.forVerificationCode.tr()}",
                                textAlign: TextAlign.center,
                                style: AppTextTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: 20.padVertical + 40.padHorizontal,
                              child: PinCodeTextField(
                                appContext: context,
                                length: 4,
                                obscureText: false,
                                animationType: AnimationType.fade,
                                keyboardType: TextInputType.phone,
                                validator: Validator.validateOTP,
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(8.r),
                                  fieldHeight: 50.w,
                                  fieldWidth: 50.w,
                                  inactiveColor: Colors.grey.shade300,
                                  activeColor: AppColors.primary,
                                  selectedColor: AppColors.primary,
                                  activeBorderWidth: 1,
                                  inactiveBorderWidth: 1
                                ),
                                textStyle: AppTextTheme.headingSmall.copyWith(
                                  color: AppColors.primary,
                                ),
                                animationDuration: Duration(milliseconds: 300),
                                onChanged: (value) {
                                  context.read<OtpVerificationCubit>().setOtp(value);
                                },
                                onCompleted: (value) {
                                },
                              ),
                            ),
                            OnTap(
                              onTap:  (){
                                context.read<OtpVerificationCubit>().sendOtp(phoneNumber);
                              },
                              child: RichText(
                                text: TextSpan(
                                  text: LocaleKeys.didNotReceiveCode.tr(),
                                  style: AppTextTheme.bodyXSmall,
                                  children: [
                                    TextSpan(
                                      text: " ${LocaleKeys.resendCode.tr()}",
                                      style: AppTextTheme.bodySmallSemiBold.copyWith(
                                          color: AppColors.primary
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      CustomButton(
                        width: double.infinity,
                        onPressed: () {
                          if(state.otpKey.currentState!.validate())
                          {
                            if (state.status is! ValidateOtpLoading &&
                                state.status is! SendOtpLoading) {
                              context
                                  .read<OtpVerificationCubit>()
                                  .validateOtp(phoneNumber)
                                  .then((value) {
                                if (value) {
                                  callBack(state.otp);
                                }
                              });
                            }
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
        ),
      ),
    );
  }
}


