import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/item/SocialButton.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomSocialSignIn extends StatelessWidget {
  const CustomSocialSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerWithText(),
        20.verticalSpace,
        const SocialButtons(),
      ],
    );
  }
}

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.grey, thickness: 0.5)),
        Padding(
          padding: EdgeInsets.only(left: 10.h, right: 10.h),
          child: TextApp(
            LocaleKeys.or.tr(),
            style: AppTextTheme.bodySmall.copyWith(
              color: AppColors.grey
            ),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.grey, thickness: 0.5)),
      ],
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton(
          icon:AppImages.images.core.png.googleIcon.path,
          text: LocaleKeys.signInWithGoogle.tr(),
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        SocialButton(
          icon: AppImages.images.core.png.facebookicon.path,
          text: LocaleKeys.signInWithFacebook.tr(),
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        SocialButton(
          icon: AppImages.images.core.png.appleicon.path,
          text: LocaleKeys.signInWithApple.tr(),
          onPressed: () {},
        ),
      ],
    );
  }
}
