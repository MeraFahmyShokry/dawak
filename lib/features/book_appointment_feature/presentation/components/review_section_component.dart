import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:flutter/material.dart';
import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/widget/text_app.dart';
import '../items/review_card_item.dart';

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
              context.translate.reviews,
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeDefault,
                  fontWeight: FontWeightHelper.medium,
                  color: context.color.titleColor),
            ),
            GestureDetector(
              onTap: () {

              },
              child: TextApp(
                context.translate.viewMore,
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
