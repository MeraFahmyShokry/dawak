import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/util/style/images/fonts.gen.dart';
import '../../../../core/presentation/widget/text_app.dart';

class ComplainingItem extends StatelessWidget {
  final String title;
  final bool? isSelected;

  const ComplainingItem(
      {super.key, required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        height: 29,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: isSelected!
              ? context.color.primaryColor
              : context.color.skyBlueColor, // Light blue background
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
        ),
        child: TextApp(
          title,
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeSmall,
              fontWeight: FontWeightHelper.regular,
              color: isSelected!
                  ? context.color.whiteColor
                  : context.color.titleColor),
        ),
      ),
    );
  }
}
