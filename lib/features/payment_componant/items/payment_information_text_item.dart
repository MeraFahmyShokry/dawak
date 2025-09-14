import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

class PaymentInformationTextItem extends StatelessWidget {
  const PaymentInformationTextItem({
    super.key, required this.text,
    this.padding = AppDimensions.paddingSizeDefault,
  });
  final String text;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding,
      ),
      child: TextApp(
        text,
        style: context.textStyle.copyWith(
          fontSize: AppDimensions.fontSizeLarge,
          fontWeight: FontWeightHelper.regular,
          color: context.color.titleColor,
        ),
      ),
    );
  }
}
