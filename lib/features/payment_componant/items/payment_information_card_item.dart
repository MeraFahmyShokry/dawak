import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class PaymentInformationCardItem extends StatelessWidget {
  const PaymentInformationCardItem(
      {super.key,
      required this.icon,
      required this.text1,
      required this.text2});
  final String icon;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.fontSizeDefault),
          child: SvgPicture.asset(
            icon,
            width: 24.w,
            height: 24.h,
            // color: context.color.blueColor,
          ),
        ),
        TextApp(
          text1,
          style: context.textStyle.copyWith(
            fontSize: AppDimensions.fontSizeDefault,
            fontWeight: FontWeightHelper.medium,
            color: context.color.titleColor,
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.fontSizeDefault),
          child: TextApp(
            text2,
            style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium,
              color: context.color.secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
