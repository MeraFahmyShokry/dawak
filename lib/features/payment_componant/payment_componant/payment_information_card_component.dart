import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/features/payment_componant/items/payment_information_card_item.dart';
import 'package:flutter/material.dart';

class PaymentInformationCardComponent extends StatelessWidget {
  const PaymentInformationCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PaymentInformationCardItem(
          icon: AppImages.images.core.svg.visaCardName.path,
          text1: context.translate.cardholderName,
          text2: 'wait from api...'),
      SizedBox(
        height: AppDimensions.paddingSizeExtraSmall,
      ),
      PaymentInformationCardItem(
            icon: AppImages.images.core.svg.visaCardNumber.path,
          text1: context.translate.cardNumber,
          text2: 'wait from api...'),
      SizedBox(
        height: AppDimensions.paddingSizeExtraSmall,
      ),
      PaymentInformationCardItem(
          icon: AppImages.images.core.svg.visaExpiry.path,
          text1: context.translate.expiryDate,
          text2: 'wait from api...'),
      SizedBox(
        height: AppDimensions.paddingSizeExtraSmall,
      ),
      PaymentInformationCardItem(
          icon: AppImages.images.core.svg.visaLock.path,
          text1: context.translate.cvv,
          text2: 'wait from api...'),
    ]);
  }
}
