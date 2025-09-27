import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routing/navigation_helper.dart';
import '../../../../../gen/locale_keys.g.dart';
import '../login/login_view.dart';

class ForgetPasswordSuccessfullyView extends StatelessWidget {
  const ForgetPasswordSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
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
                        AppImages.images.core.animation.changePasswordSuccees.image(
                          width: 200.w,
                          height: 200.w,
                          fit: BoxFit.cover
                        ),
                        Text(
                          "Password Changed Successfully",
                          style: AppTextTheme.bodyLargeMediumBold.copyWith(
                            color: AppColors.primary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        10.verticalSpace,
                        Text(
                          "Go to login page to sign in and join our community",
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
      ),
    );
  }
}
