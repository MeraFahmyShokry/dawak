import 'package:clean_arc/core/app/enums/order_delivery_types.dart';
import 'package:clean_arc/core/presentation/widget/customBackButton.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/book_appointment_app_bar_component.dart';
import 'package:clean_arc/features/public_awarness_feature/presentation/views/public_awarness_details_view.dart';
import 'package:flutter/material.dart';

//@RoutePage()
class PublicAwarnessView extends StatelessWidget {
  static const String path = '/PublicAwarnessView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.blue_BEDAFF,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(16),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                color: context.color.whiteColor,
                backgroundColor: context.color.lightGrey2Color,
                borderRadius: BorderRadius.circular(4),
                minHeight: 5,
                value: .25,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 24),
                child: Row(
                  spacing: 14,
                  children: [
                    CustomBackButton(),
                    Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextApp(
                          'Dr. Mohamed Mostafa',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeLarge,
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
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              CustomContainerCard(
                padding: EdgeInsetsDirectional.all(16),
                radius: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppImages.images.core.logos.awarnessImg.image(
                        width: double.infinity, height: 240, fit: BoxFit.cover),
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
                    Wrap(
                      runSpacing: 3,
                      spacing: 3,
                      children: [
                        TextApp(
                          context.translate.loremText,
                          maxLines: 7,
                          textOverflow: TextOverflow.ellipsis,
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            NavigationHelper.push(
                                context, PublicAwarnessDetailsView());
                          },
                          child: TextApp(
                            context.translate.readMore,
                            style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              decorationStyle: TextDecorationStyle.solid,
                              decoration: TextDecoration.underline,
                              height: 1,
                              color: context.color.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      onPressed: () {
                        NavigationHelper.push(
                            context, PublicAwarnessDetailsView());
                      },
                      title: context.translate.viewAllBlog,
                      width: double.infinity,
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
