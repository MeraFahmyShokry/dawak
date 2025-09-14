import 'package:clean_arc/core/app/enums/order_delivery_types.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/book_appointment_app_bar_component.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/widget/filter_dropdown_menu_button.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
@RoutePage()
class MyOrdersView extends StatelessWidget {
  static const String path = '/MyOrdersView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      appBar: CustomAppBar(
        title: LocaleKeys.myorders.tr(),
        // leadingPadding: 16,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyOrdersHeaderComponent(),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return MyOrdersItem(
                      deliveryType: OrderDeliveryTypes.onHisWay,
                    );
                  },
                  itemCount: 2,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyOrdersItem extends StatelessWidget {
  const MyOrdersItem({super.key, required this.deliveryType});

  final OrderDeliveryTypes deliveryType;
  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      margin: EdgeInsetsDirectional.all(2),
      padding: EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 14),
      child: Column(
        spacing: 10,
        children: [
          Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextApp(
                'Ordered Today . 11:30 AM',
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeDefault,
                    fontWeight: FontWeightHelper.medium,
                    color: context.color.gray_A4A7AE),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: deliveryType == OrderDeliveryTypes.onHisWay
                      ? context.color.green_15A042!.withValues(alpha: 0.1)
                      : context.color.white_F2F2F2,
                ),
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 8, vertical: 5.5),
                child: TextApp(
                  context.tr2(deliveryType.label),
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeSmall,
                      fontWeight: FontWeightHelper.regular,
                      color: deliveryType == OrderDeliveryTypes.onHisWay
                          ? context.color.green_15A042
                          : context.color.gray_A4A7AE),
                ),
              )
            ],
          ),
          Divider(
            color: context.color.white_F2F2F2,
            height: 0,
            thickness: 1,
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppImages.images.core.png.elmokhtaber.image(
                width: 70,
                height: 70,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextApp(
                    LocaleKeys.alamawyPharmacy.tr(),
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeDefault,
                        fontWeight: FontWeightHelper.medium,
                        color: context.color.titleColor),
                  ),
                  TextApp(
                    '${LocaleKeys.orderId.tr()}: 212123',
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeSmall,
                        fontWeight: FontWeightHelper.regular,
                        color: context.color.primaryColor),
                  ),
                  TextApp(
                    'EGP 250',
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeSmall,
                        fontWeight: FontWeightHelper.medium,
                        color: context.color.primaryColor),
                  ),
                ],
              ),
              Spacer(),
              Row(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextApp(
                    '2 ${LocaleKeys.items.tr()}',
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeSmall,
                        fontWeight: FontWeightHelper.regular,
                        color: context.color.black),
                  ),
                  AppImages.images.core.svg.bottomArrow.svg(
                    width: 4.5,
                    height: 8,
                    colorFilter: ColorFilter.mode(
                        context.color.secondaryColor!, BlendMode.srcIn),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyOrdersHeaderComponent extends StatelessWidget {
  const MyOrdersHeaderComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 8,
      children: [
        TextApp(
          '2 ${LocaleKeys.items.tr()}',
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeSmall,
              fontWeight: FontWeightHelper.regular,
              color: context.color.titleColor),
        ),
        FilterDropdownMenuButtonComponent()
      ],
    );
  }
}
