import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/payment_componant/items/payment_information_radio_item.dart';
import 'package:flutter/material.dart';
class PaymentWithFawryAndVodafone extends StatelessWidget {
  const PaymentWithFawryAndVodafone({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.paddingSizeDefault,
          vertical: AppDimensions.paddingSizeDefault
          ),
      child: Column(
        spacing: AppDimensions.paddingSizeDefault,
        children: [
          Row(
            children: [
              PaymentInformationRadioItem(),
            Image.asset(
              AppImages.images.core.png.fawry.path,
              width: 52.w,
              height: 35.4.h,
            ),
            SizedBox(width: AppDimensions.paddingSizeDefault),
            SvgPicture.asset(
              AppImages.images.core.svg.vodafone.path,
              width: 52.w,
              height: 35.4.h,
            ),
          ]),
          Center(
            child: SizedBox(
              width: 255.w,
              child: Column(
                // spacing: AppDimensions.paddingSizeDefault,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextApp(
                    context.translate.walletNumber,
                    style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeLarge,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.titleColor,
                    ),
                  ),
                  SizedBox(height: AppDimensions.paddingSizeDefault,),
                  CustomTextField(
                    hintText: context.translate.enterWalletNumber,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PaymentWithVisaAndMastercard extends StatelessWidget {
  const PaymentWithVisaAndMastercard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.paddingSizeDefault,
          vertical: AppDimensions.paddingSizeDefault
          ),
      child: Column(
        spacing: AppDimensions.paddingSizeDefault,
        children: [
          Row(
            children: [
              PaymentInformationRadioItem(),
            SvgPicture.asset(
              AppImages.images.core.svg.visa.path,
              width: 52.w,
              height: 35.4.h,
            ),
            SizedBox(width: AppDimensions.paddingSizeDefault),
            SvgPicture.asset(
              AppImages.images.core.svg.mastercard.path,
              width: 52.w,
              height: 35.4.h,
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: AppDimensions.paddingSizeExtraLarge),
            child: Column(
              children: [
                Row(
                  children: [
                    PaymentInformationRadioItem(),
                    TextApp(
                      'xxxx-xxxx-xxxx-5030',
                      style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeLarge,
                        fontWeight: FontWeightHelper.medium,
                        color: context.color.titleColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    PaymentInformationRadioItem(),
                    TextApp(
                      context.translate.newCard,
                      style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeLarge,
                        fontWeight: FontWeightHelper.medium,
                        color: context.color.titleColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
