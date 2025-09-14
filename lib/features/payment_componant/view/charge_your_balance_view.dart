import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/payment_componant/items/payment_information_text_item.dart';
import 'package:clean_arc/features/payment_componant/payment_componant/payment_methode_componant.dart';
import 'package:clean_arc/features/payment_componant/view/payment_information_view.dart';
import 'package:clean_arc/features/paymentsss/IRSPaymentWebView.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class ChargeYourBalanceView extends StatelessWidget {
  const ChargeYourBalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: LocaleKeys.paymentinformation.tr(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingSizeDefault),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppDimensions.fontSizeDefault,
              children: [
                PaymentInformationTextItem(
                  text: LocaleKeys.chargeYourBalance.tr(),
                ),
                SizedBox(height: AppDimensions.paddingSizeDefault),
                PaymentWithVisaAndMastercard(),
                PaymentWithFawryAndVodafone(),
                SizedBox(height: AppDimensions.paddingSizeDefault),
                PaymentInformationTextItem(text: LocaleKeys.totalAmount.tr()),
                CustomTextField(
                  hintText: LocaleKeys.enterTheAmountYouWantToCharge.tr(),
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const IRSPaymentWebView()),
                    );

                    {}
                  },
                  title: LocaleKeys.chargeYourBalance.tr(),
                  width: double.infinity,
                )
              ]),
        ),
      ),
    );
  }
}
