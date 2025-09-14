import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//@RoutePage()

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  static const path = '/ResetPasswordView';

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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    border: Border.all(color: context.color.borderColor!)),
                height: 60,
                width: 60,
                // child: AppImages.images.svg.lockIcon.svg(fit: BoxFit.scaleDown),
              ),
              Spacer(
                flex: 3,
              ),
              TextApp(
                LocaleKeys.resetYourPassword.tr(),
                style: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.bold,
                    fontSize: AppDimensions.fontSizeOverLarge),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: context.width / 1.3,
                child: TextApp(
                   LocaleKeys.newPasswordMustDiffer.tr(),
                  style: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.medium,
                    fontSize: AppDimensions.fontSizeLarge,
                    color: context.color.descriptionColor,
                    height: 2,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                titleText: LocaleKeys.password.tr(),
                hintText: LocaleKeys.enterPassword.tr(),
                suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                // isShowBorder: true,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                titleText: LocaleKeys.confirmPassword.tr(),
                hintText: LocaleKeys.enterPassword.tr(),
                // isShowBorder: true,
                suffixIcon: const Icon(Icons.remove_red_eye_sharp),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 22,
                    color: context.color.blueColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextApp(
                     LocaleKeys.passwordCondition1.tr(),
                    style: context.textStyle.copyWith(
                      fontWeight: FontWeightHelper.medium,
                      fontSize: AppDimensions.fontSizeLarge,
                      color: context.color.descriptionColor,
                      height: 2,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 22,
                    color: context.color.grayColor?.withOpacity(.4),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextApp(
                    LocaleKeys.passwordCondition2.tr(),
                    style: context.textStyle.copyWith(
                      fontWeight: FontWeightHelper.medium,
                      fontSize: AppDimensions.fontSizeLarge,
                      color: context.color.descriptionColor,
                      height: 2,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Spacer(
                flex: 10,
              ),
              CustomButton(
                  width: double.infinity,
                  onPressed: () {},
                  child: TextApp(
                   LocaleKeys.resetPassword.tr(),
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
