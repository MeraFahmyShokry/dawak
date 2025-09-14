import 'package:auto_route/auto_route.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/fonts.gen.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/util/style/images/assets.gen.dart';
import '../../../../core/presentation/widget/custom_button_button.dart';
import '../../../../core/presentation/widget/text_app.dart';
import '../../../../core/routing/navigation_helper.dart';
import '../components/book_appointment_app_bar_component.dart';
import '../components/book_appointment_progress_bar_component.dart';
class LabeledCardInputFieldComponent extends StatelessWidget {
  const LabeledCardInputFieldComponent({
    super.key,
    required TextEditingController creditCardNumberController,
    this.inputType,
    this.hintTxt,
    required this.title,
  }) : _creditCardNumberController = creditCardNumberController;

  final TextEditingController _creditCardNumberController;
  final TextInputType? inputType;
  final String? hintTxt;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(
          title,
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium,
              color: context.color.titleColor),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: context.color.borderColor!),
          ),
          child: TextField(
            cursorColor: context.color.primaryColor,
            clipBehavior: Clip.hardEdge,
            keyboardType: inputType,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border: InputBorder.none,
              hintText: hintTxt,
              hintStyle: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeSmall,
                  fontWeight: FontWeightHelper.regular,
                  color: context.color.gray_41465180),
            ),
            maxLines: 1, // Allow multiple lines for longer text
          ),
        ),
      ],
    );
  }
}