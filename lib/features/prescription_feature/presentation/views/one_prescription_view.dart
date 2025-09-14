import 'package:clean_arc/core/app/enums/order_delivery_types.dart';
import 'package:clean_arc/core/presentation/util/dialogs/custom_vertical_alert_dialog.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/book_appointment_app_bar_component.dart';
import 'package:clean_arc/features/prescription_feature/presentation/views/two_prescription_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/widget/filter_dropdown_menu_button.dart';

//@RoutePage()
class OnePrescriptionView extends StatelessWidget {
  static const String path = '/OnePrescriptionView';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: context.color.whiteColor,
        appBar: CustomAppBar(title: context.translate.prescriptions),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      // TabBar inside body
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: context.color.borderColor!,
                                    width: 1))),
                        child: TabBar(
                          labelStyle: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeLarge,
                              fontWeight: FontWeightHelper.medium,
                              color: context.color.titleColor),
                          unselectedLabelStyle: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeDefault,
                              fontWeight: FontWeightHelper.medium,
                              color: context.color.primaryColor!
                                  .withValues(alpha: 0.48)),
                          indicatorWeight: 2,
                          indicatorColor: context.color.secondaryColor,
                          tabs: [
                            Tab(
                              child: TextApp(
                                context.translate.yourPrescriptions,
                                textOverflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Tab(
                              child: TextApp(
                                context.translate.relevantPrescriptions,
                                textOverflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // TabBarView inside body
                      Expanded(
                        child: TabBarView(
                          children: [
                            YourPrescriptionsContentComponent(),
                            YourPrescriptionsContentComponent(),
                          ],
                        ),
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
             context.translate.spechDemo,
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

class YourPrescriptionsContentComponent extends StatelessWidget {
  const YourPrescriptionsContentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        spacing: 24,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              TextApp(
                '5 ${context.translate.prescriptions}',
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeSmall,
                    fontWeight: FontWeightHelper.regular,
                    color: context.color.titleColor),
              ),
              FilterDropdownMenuButtonComponent()
            ],
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        NavigationHelper.push(context, TwoPrescriptionView());
                      },
                      child: PrescriptionItem()),
                  separatorBuilder: (context, index) => Divider(
                        thickness: 1,
                        height: 16,
                        color: context.color.greyCounterBorderColor,
                      ),
                  itemCount: 5))
        ],
      ),
    );
  }
}
