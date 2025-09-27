import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/login/login_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routing/navigation_helper.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_them.dart';
import '../../../../../gen/locale_keys.g.dart';

class RegisterSuccessfullyView extends StatelessWidget {
  const RegisterSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      body: Padding(
        padding: 16.padAll,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: 16.padHorizontal,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppImages.images.core.animation.registerSuccess.image(
                          width: 200.w,
                          height: 200.w,
                          fit: BoxFit.cover
                      ),
                      Text(
                        LocaleKeys.verificationDone.tr(),
                        style: AppTextTheme.bodyLargeMediumBold.copyWith(
                          color: AppColors.primary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      10.verticalSpace,
                      Text(
                        LocaleKeys.welcomeToCommunity.tr(),
                        style: AppTextTheme.bodyMediumMediumBold,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            40.verticalSpace,
            CustomButton(
              width: double.infinity,
              onPressed: () {
                NavigationHelper.pushReplacementAll(context, LoginView());
              },
              child: TextApp(
                LocaleKeys.goToLogin.tr(),
                style: context.textStyleButton,
              ),
            ),

          ],
        ),
      ),
    );
  }
}