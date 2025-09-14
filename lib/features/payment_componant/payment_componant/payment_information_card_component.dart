import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/features/payment_componant/items/payment_information_card_item.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class PaymentInformationCardComponent extends StatelessWidget {
  const PaymentInformationCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PaymentInformationCardItem(
          icon: AppImages.images.core.svg.visaCardName.path,
          text1: LocaleKeys.cardholderName.tr(),
          text2: 'wait from api...'),
      SizedBox(
        height: AppDimensions.paddingSizeExtraSmall,
      ),
      PaymentInformationCardItem(
            icon: AppImages.images.core.svg.visaCardNumber.path,
          text1: LocaleKeys.cardNumber.tr(),
          text2: 'wait from api...'),
      SizedBox(
        height: AppDimensions.paddingSizeExtraSmall,
      ),
      PaymentInformationCardItem(
          icon: AppImages.images.core.svg.visaExpiry.path,
          text1: LocaleKeys.expiryDate.tr(),
          text2: 'wait from api...'),
      SizedBox(
        height: AppDimensions.paddingSizeExtraSmall,
      ),
      PaymentInformationCardItem(
          icon: AppImages.images.core.svg.visaLock.path,
          text1: LocaleKeys.cvv.tr(),
          text2: 'wait from api...'),
    ]);
  }
}
