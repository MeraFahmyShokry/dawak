import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/widget/text_app.dart';

class AboutSectionComponent extends StatelessWidget {
  String description;

  AboutSectionComponent({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(
          context.translate.aboutMe,
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium,
              color: context.color.titleColor),
        ),
        TextApp(
          description,
          style: context.textStyle.copyWith(
            fontSize: AppDimensions.fontSizeSmall,
            fontWeight: FontWeightHelper.regular,
            color: context.color.black,
          ),
        ),
      ],
    );
  }
}
