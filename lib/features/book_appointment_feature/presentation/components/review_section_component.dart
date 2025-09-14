import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:flutter/material.dart';
import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/widget/text_app.dart';
import '../items/review_card_item.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class ReviewsSectionComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            TextApp(
              LocaleKeys.reviews.tr(),
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeDefault,
                  fontWeight: FontWeightHelper.medium,
                  color: context.color.titleColor),
            ),
            GestureDetector(
              onTap: () {

              },
              child: TextApp(
                LocaleKeys.viewMore.tr(),
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeSmall,
                    fontWeight: FontWeightHelper.regular,
                    color: context.color.titleColor),
              ),
            )
          ],
        ),
        ReviewCardItem(),
      ],
    );
  }
}
