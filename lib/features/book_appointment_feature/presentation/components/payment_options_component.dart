import 'package:auto_route/auto_route.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/fonts.gen.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/util/style/images/assets.gen.dart';
import '../../../../core/presentation/widget/custom_button_button.dart';
import '../../../../core/presentation/widget/text_app.dart';
import '../../../../core/routing/navigation_helper.dart';
import '../components/book_appointment_app_bar_component.dart';
import '../components/book_appointment_progress_bar_component.dart';
import 'card_details_component.dart';

class PaymentOptionsComponent extends StatefulWidget {
  @override
  State<PaymentOptionsComponent> createState() =>
      _PaymentOptionsComponentState();
}

class _PaymentOptionsComponentState extends State<PaymentOptionsComponent> {
  String? _selectedPaymentMethod;

  bool _visaExpanded = false;
  bool _masterExpanded = false;

  TextEditingController _visaNumberController = TextEditingController();

  TextEditingController _visaHolderNameController = TextEditingController();

  TextEditingController _visaCvvController = TextEditingController();

  TextEditingController _visaExpiryDateController = TextEditingController();

  TextEditingController _masterNumberController = TextEditingController();

  TextEditingController _masterHolderNameController = TextEditingController();

  TextEditingController _masterCvvController = TextEditingController();

  TextEditingController _masterExpiryDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomContainerCard(
          child: Column(
            children: [
              RadioListTile(
                title: Row(
                  children: [
                    AppImages.images.core.svg.visa.svg(width: 52, height: 35),
                    SizedBox(width: 8),
                    TextApp(
                      LocaleKeys.visaCard.tr(),
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.titleColor),
                    ),
                  ],
                ),
                value: 'visa',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                    _visaExpanded = value == 'visa';
                    _masterExpanded = false;
                  });
                },
              ),
              if (_visaExpanded)
                CardDetailsComponent(
                    creditCardNumberController: _visaNumberController,
                    creditCardHolderNameController: _visaHolderNameController,
                    cvvController: _visaCvvController,
                    expiryDateController: _visaExpiryDateController),
            ],
          ),
        ),
        CustomContainerCard(
          child: Column(
            children: [
              RadioListTile<String>(
                title: Row(
                  children: [
                    AppImages.images.core.svg.mastercard
                        .svg(width: 52, height: 35),
                    SizedBox(width: 8),
                    TextApp(
                      LocaleKeys.masterCard.tr(),
                      style: context.textStyle,
                        fontSize: AppDimensions.fontSizeLarge,
                        fontWeight: FontWeightHelper.medium,
                        color: context.color.titleColor
                    // ),
                    ),
                  ],
                ),
                value: 'credit_card',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                    _masterExpanded = value == 'credit_card';
                    _visaExpanded =
                    false; // Collapse Visa if another option is selected
                  });
                },
              ),
              if (_masterExpanded)
                CardDetailsComponent(
                    creditCardNumberController: _masterNumberController,
                    creditCardHolderNameController: _masterHolderNameController,
                    cvvController: _masterCvvController,
                    expiryDateController: _masterExpiryDateController)
            ],
          ),
        ),
        CustomContainerCard(
          child: RadioListTile<String>(
            title: Row(
              children: [
                AppImages.images.core.png.fawry.image(width: 52, height: 35),
                SizedBox(width: 8),
                TextApp(
                  LocaleKeys.fawry.tr(),
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeLarge,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.titleColor),
                ),
              ],
            ),
            value: 'fawry',
            groupValue: _selectedPaymentMethod,
            onChanged: (value) {
              setState(() {
                _selectedPaymentMethod = value;
                _visaExpanded = false;
                _masterExpanded = false;
              });
            },
          ),
        ),
        CustomContainerCard(
          child: RadioListTile<String>(
            title: Row(
              children: [
                AppImages.images.core.svg.balanceIcon
                    .svg(width: 24, height: 24),
                SizedBox(width: 8),
                TextApp(
                  '${LocaleKeys.yourBalance.tr()}: 350 ${LocaleKeys.egp.tr()}',
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeLarge,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.titleColor),
                ),
              ],
            ),
            value: 'balance',
            groupValue: _selectedPaymentMethod,
            onChanged: (value) {
              setState(() {
                _selectedPaymentMethod = value;
                _visaExpanded = false;
                _masterExpanded = false;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Center(
              child: Row(
                 children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: context.color.lightGrey2Color,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  TextApp(
                    LocaleKeys.or.tr(),
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeLarge,
                        fontWeight: FontWeightHelper.medium,
                        color: context.color.gray_A4A7AE),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: context.color.lightGrey2Color,
                      ),
                    ),
                  ),
                ],
              )),
        ),
        CustomContainerCard(
          child: RadioListTile<String>(
            title: Row(
              children: [
                AppImages.images.core.svg.payOnClinic
                    .svg(width: 24, height: 24),
                SizedBox(width: 8),
                TextApp(
                  LocaleKeys.payOnClinic.tr(),
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeLarge,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.titleColor),
                ),
              ],
            ),
            value: 'pay_on_clinic',
            groupValue: _selectedPaymentMethod,
            onChanged: (value) {
              setState(() {
                _selectedPaymentMethod = value;
                _visaExpanded = false;
                _masterExpanded = false;
              });
            },
          ),
        ),
      ],
    );
  }
}