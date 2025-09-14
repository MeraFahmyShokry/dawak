import 'package:clean_arc/core/app/enums/order_delivery_types.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/book_appointment_app_bar_component.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/navigation_helper.dart';

@RoutePage()
class PublicAwarnessDetailsView extends StatelessWidget {
  static const String path = '/PublicAwarnessDetailsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.translate.publicAwareness),
      backgroundColor: context.color.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   spacing: 14,
                //   children: [
                //     GestureDetector(
                //       onTap:(){
                //         NavigationHelper.pop(context);
                //       },
                //       child: AppImages.images.core.svg.backBtnArrow.svg(
                //         width: 7,
                //         height: 14,
                //         colorFilter: ColorFilter.mode(
                //           context.color.secondaryColor!,
                //           BlendMode.srcIn,
                //         ),
                //       ),
                //     ),
                //     TextApp(
                //       context.translate.publicAwareness,
                //       style: context.textStyle.copyWith(
                //           fontSize: AppDimensions.fontSizeLarge,
                //           fontWeight: FontWeightHelper.medium,
                //           color: context.color.black),
                //     ),
                //   ],
                // ),
                // SizedBox(height: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppImages.images.core.logos.awarnessImg.image(
                        width: double.infinity, height: 240, fit: BoxFit.cover),
                    SizedBox(
                      height: 16,
                    ),
                    TextApp(
                      'By,',
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeSmall,
                          fontWeight: FontWeightHelper.regular,
                          color: context.color.gray_A4A7AE),
                    ),
                    Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextApp(
                          'Dr. Mohamed Mostafa',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeDefault,
                              fontWeight: FontWeightHelper.medium,
                              color: context.color.black),
                        ),
                        TextApp(
                          'Neurology Specialist',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.gray_A4A7AE),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextApp(
                          context.translate.publicAwareness,
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeLarge,
                              fontWeight: FontWeightHelper.medium,
                              color: context.color.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextApp(
                          context.translate.loremText,
                          maxLines: 7,
                          textOverflow: TextOverflow.ellipsis,
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextApp(
                          context.translate.publicAwareness,
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeLarge,
                              fontWeight: FontWeightHelper.medium,
                              color: context.color.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextApp(
                          context.translate.loremText,
                          maxLines: 7,
                          textOverflow: TextOverflow.ellipsis,
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
