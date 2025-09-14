import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
//@RoutePage()
class ConfirmOtpView extends StatelessWidget {
  const ConfirmOtpView({super.key});

  static const path = '/ConfirmOtpView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: context.color.primaryColor?.withOpacity(.2),
        body: SafeArea(
      child: SizedBox(
        height: context.height,
        width: context.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: AppDimensions.fontSizeExtraLarge,
                  )),
              Spacer(),
              Container(
                child: TextApp(
                   LocaleKeys.confirmVerificationCode.tr(),
                  style: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.medium,
                    fontSize: AppDimensions.fontSizeLarge,
                    height: 2,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              TextApp(
                 LocaleKeys.codeSent.tr(),
                style: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.bold,
                    height: 1.6,
                    fontSize: AppDimensions.fontSizeOverLarge),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 16.h,
              ),
              OtpTextField(
                // styles: [],
                focusedBorderColor: context.color.primaryColor!,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                fieldHeight: 50.h,
                fieldWidth: 50.h,
                numberOfFields: 6,
                borderColor: context.color.borderColor!,

                //set to true to show as box or false to show as dash
                showFieldAsBox: true,

                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {}, // end onSubmit
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextApp(
                         LocaleKeys.resendCode.tr(),
                        style: context.textStyle.copyWith(
                            color: context.color.blueColor,
                            fontWeight: FontWeightHelper.semiBold),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextApp(
                        "00:25",
                        style: context.textStyle.copyWith(
                            // color: context.color.blueColor,
                            fontWeight: FontWeightHelper.semiBold),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(
                flex: 10,
              ),
              CustomButton(
                  width: double.infinity,
                  onPressed: () {
                    // context.router.push(ConfirmOtpViewRoute());
                    NavigationHelper.push(
                        context, ConfirmOtpView());
                  },
                  child: TextApp(
                     LocaleKeys.confirmVerificationCode.tr(),
                    style: context.textStyleButton,
                  )),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextApp(
              LocaleKeys.returnToSignIn.tr(),
                    style: context.textStyle.copyWith(
                        color: context.color.descriptionColor,
                        fontWeight: FontWeightHelper.semiBold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: context.color.descriptionColor,
                  )
                ],
              ),
              Spacer(
                flex: 10,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

