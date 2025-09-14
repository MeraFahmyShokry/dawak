import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:flutter/material.dart';
import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/widget/text_app.dart';

class ReviewCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      alignment: AlignmentDirectional.center,
      padding: EdgeInsetsDirectional.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(AppImages.images.core.png.defaultProfile.path,),
              ),
              Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextApp(
                    'Mohamed Ahmed',
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeDefault,
                        fontWeight: FontWeightHelper.medium,
                        color: context.color.titleColor),
                  ),
                  Row(
                    spacing: 2,
                    children: [
                      Row(
                        children: List<Widget>.generate(5, (index) => Padding(
                          padding: const EdgeInsetsDirectional.only(end: 2),
                          child: AppImages.images.core.svg.starReviewIcon.svg(
                            width: 14,
                            height: 14,
                          ),
                        ),),
                      ),
                      TextApp(
                        '5.0',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.titleColor),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextApp(
                    '',
                  ),
                  TextApp(
                    '1 day ago',
                    style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeExtraSmall,
                        fontWeight: FontWeightHelper.regular,
                        color: context.color.gray_717680),
                  ),
                ],
              ),
            ],
          ),
          TextApp(
            textAlign: TextAlign.center,
            'Lorem epsomLorem epsomLorem njmka kdyhfl kkfjfmfj',
            style: context.textStyle.copyWith(
                fontSize: AppDimensions.fontSizeSmall,
                fontWeight: FontWeightHelper.regular,
                color: context.color.black),
          ),
        ],
      ),
    );
  }
}
