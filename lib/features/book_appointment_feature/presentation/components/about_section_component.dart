import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
          LocaleKeys.aboutMe.tr(),
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
