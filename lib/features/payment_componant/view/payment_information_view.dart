import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/payment_componant/payment_componant/payment_balance_component.dart';
import 'package:clean_arc/features/payment_componant/payment_componant/saved_visa_card_componant.dart';
import 'package:clean_arc/features/payment_componant/view/charge_your_balance_view.dart';
import 'package:flutter/material.dart';

import '../items/payment_information_text_item.dart'
    show PaymentInformationTextItem;
import '../payment_componant/payment_information_card_component.dart'
    show PaymentInformationCardComponent;

class PaymentInformationView extends StatelessWidget {
  const PaymentInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: context.translate.paymentinformation),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppDimensions.paddingSizeDefault,
            children: [
              PaymentBalanceComponent(),
              PaymentInformationTextItem(
                text: context.translate.savedCards,
              ),
              SavedVisaCardComponent(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaymentInformationTextItem(
                    text: context.translate.cardInformation,
                  ),
                ],
              ),
              PaymentInformationCardComponent(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomButton(
                  // paddingHorizontal: AppDimensions.paddingSizeDefault,
                  onPressed: () {
                    NavigationHelper.push(context, ChargeYourBalanceView());
                  },
                  title: context.translate.addNewCard,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
