import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/forgt_password/rest_password_view.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

//@RoutePage()
class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  static const path = '/ForgetPasswordView';

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
                // child: AppImages.images.svg.keyIcon.svg(fit: BoxFit.scaleDown),
              ),
              Spacer(
                flex: 3,
              ),
              TextApp(
                LocaleKeys.forgetPassword2.tr(),
                style: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.bold,
                    fontSize: AppDimensions.fontSizeOverLarge),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                // width: context.width / 1.5,
                child: TextApp(
                  LocaleKeys.dontWorry.tr(),
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
                titleText: LocaleKeys.phoneOrEmail.tr(),
                hintText: LocaleKeys.enterPhoneOrEmail.tr(),
                // isShowBorder: true,
              ),
              const Spacer(
                flex: 10,
              ),
              CustomButton(
                  width: double.infinity,
                  onPressed: () {
                    // context.router.push(ResetPasswordViewRoute());
                    NavigationHelper.push(
                        context, ResetPasswordView());
                  },
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
