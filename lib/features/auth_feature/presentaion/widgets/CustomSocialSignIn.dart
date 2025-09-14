import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/item/SocialButton.dart';
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
            context.translate.or,
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
          text: context.translate.signInWithGoogle,
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        SocialButton(
          icon: AppImages.images.core.png.facebookicon.path,
          text: context.translate.signInWithFacebook,
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        SocialButton(
          icon: AppImages.images.core.png.appleicon.path,
          text: context.translate.signInWithApple,
          onPressed: () {},
        ),
      ],
    );
  }
}
