import 'package:auto_route/auto_route.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/presentation/util/style/images/fonts.gen.dart';
import 'package:clean_arc/core/presentation/widget/custom_button_button.dart';
import 'package:clean_arc/features/layout_feature/view/layout_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/widget/text_app.dart';
import '../../../../core/routing/navigation_helper.dart';

@RoutePage()
class AppointmentSuccessView extends StatelessWidget {
  static const String path = '/AppointmentSuccessView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 40,
              children: [
                AppImages.images.core.svg.appointmentSuccessImg.svg(),
                Column(
                  spacing: 8,
                  children: [
                    TextApp(
                      context.translate.appointmentSuccessTitle,
                      textAlign: TextAlign.center,
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.titleColor),
                    ),
                    TextApp(
                      context.translate.appointmentSuccessSubTitle,
                      textAlign: TextAlign.center,
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeDefault,
                          fontWeight: FontWeightHelper.regular,
                          color: context.color.lightBlackColor),
                    ),
                  ],
                ),
                CustomButton(
                  onPressed: () async {
                    await NavigationHelper.pushReplacementAll(
                      context,
                      LayoutView(),
                    );
                  },
                  title: context.translate.home,
                  width: double.infinity,
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
