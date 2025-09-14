import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/custom_button_button.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/features/payment_componant/view/charge_your_balance_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class PaymentBalanceComponent extends StatelessWidget {
  const PaymentBalanceComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:AppDimensions.paddingSizeDefault,vertical: AppDimensions.paddingSizeDefault),
      child: CustomContainerCard(
        height: 120.h,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: AppDimensions.paddingSizeDefault,top: AppDimensions.paddingSizeSmall),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:AppDimensions.paddingSizeDefault),
                    child: TextApp(
                      LocaleKeys.yourBalance.tr() + ':',
                      style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeLarge,
                        fontWeight: FontWeightHelper.medium,
                        color: context.color.titleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:AppDimensions.paddingSizeDefault),
                    child: TextApp(
                      '480 EGP',
                      style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeLarge,
                        fontWeight: FontWeightHelper.semiBold,
                        color: context.color.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppDimensions.paddingSizeDefault),
            CustomButton(
              onPressed: () {
                NavigationHelper.push(context, const ChargeYourBalanceView());
              },
              title: LocaleKeys.chargeYourBalance.tr(),
              width: double.infinity,
              // paddingHorizontal: AppDimensions.paddingSizeDefault,
            ),
          ],
                  )
      ),
    );
  }
}
