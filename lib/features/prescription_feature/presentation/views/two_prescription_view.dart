import 'package:clean_arc/core/app/enums/order_delivery_types.dart';
import 'package:clean_arc/core/presentation/util/dialogs/custom_vertical_alert_dialog.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/book_appointment_app_bar_component.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/widget/filter_dropdown_menu_button.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
@RoutePage()
class TwoPrescriptionView extends StatelessWidget {
  static const String path = '/TwoPrescriptionView';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: context.color.whiteColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 33,
                    children: [
                      GestureDetector(
                          onTap: () {
                            NavigationHelper.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: context.color.primaryColor,
                          )),
                      Column(
                        spacing: 2,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextApp(
                            'Dr. Mostafa Ahmed',
                            style: context.textStyle.copyWith(
                                fontSize: AppDimensions.fontSizeExtraLarge,
                                fontWeight: FontWeightHelper.semiBold,
                                color: context.color.titleColor),
                          ),
                          TextApp(
                            LocaleKeys.dentistry.tr(),
                            style: context.textStyle.copyWith(
                                fontSize: AppDimensions.fontSizeDefault,
                                fontWeight: FontWeightHelper.regular,
                                color: context.color.titleColor),
                          ),
                        ],
                      ),
                      Spacer(),
                      AppImages.images.core.svg.shareIcon.svg(
                        width: 15,
                        height: 18,
                        colorFilter: ColorFilter.mode(
                            context.color.secondaryColor!, BlendMode.srcIn),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    spacing: 24,
                    children: [
                      Column(
                        spacing: 8,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              TextApp(
                                '${LocaleKeys.name.tr()}:',
                                style: context.textStyle.copyWith(
                                    fontSize: AppDimensions.fontSizeDefault,
                                    fontWeight: FontWeightHelper.medium,
                                    color: context.color.titleColor),
                              ),
                              TextApp(
                                'Nayera Wael',
                                style: context.textStyle.copyWith(
                                    fontSize: AppDimensions.fontSizeDefault,
                                    fontWeight: FontWeightHelper.regular,
                                    color: context.color.primaryColor),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              TextApp(
                                '${LocaleKeys.date.tr()}:',
                                style: context.textStyle.copyWith(
                                    fontSize: AppDimensions.fontSizeDefault,
                                    fontWeight: FontWeightHelper.medium,
                                    color: context.color.titleColor),
                              ),
                              TextApp(
                                '23/3/2025',
                                style: context.textStyle.copyWith(
                                    fontSize: AppDimensions.fontSizeDefault,
                                    fontWeight: FontWeightHelper.regular,
                                    color: context.color.primaryColor),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              TextApp(
                                '${LocaleKeys.bookingType.tr()}:',
                                style: context.textStyle.copyWith(
                                    fontSize: AppDimensions.fontSizeDefault,
                                    fontWeight: FontWeightHelper.medium,
                                    color: context.color.titleColor),
                              ),
                              TextApp(
                                LocaleKeys.examination.tr(),
                                style: context.textStyle.copyWith(
                                    fontSize: AppDimensions.fontSizeDefault,
                                    fontWeight: FontWeightHelper.regular,
                                    color: context.color.primaryColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // TabBar inside body
                      Expanded(
                        child: DoctorDetailsTabBarComponent(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DoctorDetailsTabBarComponent extends StatelessWidget {
  const DoctorDetailsTabBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: context.color.borderColor!, width: 1))),
          child: TabBar(
            labelStyle: context.textStyle.copyWith(
                overflow: TextOverflow.ellipsis,
                fontSize: AppDimensions.fontSizeLarge,
                fontWeight: FontWeightHelper.medium,
                color: context.color.titleColor),
            unselectedLabelStyle: context.textStyle.copyWith(
                fontSize: AppDimensions.fontSizeDefault,
                fontWeight: FontWeightHelper.medium,
                color: context.color.primaryColor!.withValues(alpha: 0.48)),
            indicatorWeight: 2,
            indicatorColor: context.color.secondaryColor,
            tabs: [
              Tab(
                child: TextApp(
                  LocaleKeys.diagnoseAndMedicine.tr(),
                  // 'Diagnose & Medicine',
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
              Tab(
                child: TextApp(
                  LocaleKeys.testsAndScans.tr(),
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [
              DiagonseComponent(),
              TestAndScanComponent(),
            ],
          ),
        ),
      ],
    );
  }
}

class PrescriptionItem extends StatelessWidget {
  const PrescriptionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 8,
      children: [
        AppImages.images.demo.png.doctor2
            .image(width: 40, height: 40, fit: BoxFit.cover),
        Column(
          spacing: 2,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextApp(
              'Dr. Mostafa Ahmed',
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeDefault,
                  fontWeight: FontWeightHelper.medium,
                  color: context.color.titleColor),
            ),
            TextApp(
              'Dentistry . Examination',
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeExtraSmall,
                  fontWeight: FontWeightHelper.regular,
                  color: context.color.primaryColor),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.more_vert,
          color: context.color.secondaryColor,
          size: 20,
        )
      ],
    );
  }
}

class DiagonseComponent extends StatelessWidget {
  const DiagonseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextApp(
                LocaleKeys.diagnose.tr(),
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeLarge,
                    fontWeight: FontWeightHelper.medium,
                    color: context.color.titleColor),
              ),
              TextApp(
                LocaleKeys.loremText.tr(),
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeDefault,
                    fontWeight: FontWeightHelper.regular,
                    color: context.color.primaryColor),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextApp(
                'Medicines',
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeLarge,
                    fontWeight: FontWeightHelper.medium,
                    color: context.color.titleColor),
              ),
              TextApp(
                'Panadol',
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeDefault,
                    fontWeight: FontWeightHelper.regular,
                    color: context.color.primaryColor),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp(
                      LocaleKeys.startDate.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.titleColor),
                    ),
                    TextApp(
                      '5/3/2025',
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeDefault,
                          fontWeight: FontWeightHelper.regular,
                          color: context.color.primaryColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp(
                      LocaleKeys.endDate.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.titleColor),
                    ),
                    TextApp(
                      '25/3/2025',
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeDefault,
                          fontWeight: FontWeightHelper.regular,
                          color: context.color.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp(
                      LocaleKeys.dosage.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.titleColor),
                    ),
                    TextApp(
                      'capsule',
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeDefault,
                          fontWeight: FontWeightHelper.regular,
                          color: context.color.primaryColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp(
                      LocaleKeys.amount.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.titleColor),
                    ),
                    TextApp(
                      LocaleKeys.capsule.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeDefault,
                          fontWeight: FontWeightHelper.regular,
                          color: context.color.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp(
                      LocaleKeys.duration.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.titleColor),
                    ),
                    TextApp(
                      '1 ${LocaleKeys.week.tr()}',
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeDefault,
                          fontWeight: FontWeightHelper.regular,
                          color: context.color.primaryColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp(
                      LocaleKeys.howManyTimes.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.titleColor),
                    ),
                    TextApp(
                      //twiceBerWeek
                      LocaleKeys.twiceBerWeek.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeDefault,
                          fontWeight: FontWeightHelper.regular,
                          color: context.color.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TestAndScanComponent extends StatelessWidget {
  const TestAndScanComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextApp(
                'Tests',
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeLarge,
                    fontWeight: FontWeightHelper.medium,
                    color: context.color.titleColor),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextApp(
                    LocaleKeys.urineTest.tr(),
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeDefault,
                        fontWeight: FontWeightHelper.regular,
                        color: context.color.primaryColor),
                  ),
                  TextApp(
                    LocaleKeys.bloodPicture.tr(),
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeDefault,
                        fontWeight: FontWeightHelper.regular,
                        color: context.color.primaryColor),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextApp(
          LocaleKeys.scans.tr(),
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeLarge,
                    fontWeight: FontWeightHelper.medium,
                    color: context.color.titleColor),
              ),
              TextApp(
              LocaleKeys.noScans.tr(),
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeDefault,
                    fontWeight: FontWeightHelper.regular,
                    color: context.color.primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
