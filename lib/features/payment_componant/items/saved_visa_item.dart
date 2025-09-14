import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class SavedVisaItem extends StatelessWidget {
  const SavedVisaItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.images.core.svg.group8.path),
          fit: BoxFit.cover,
        ),
        color: context.color.pinkColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.paddingSizeDefault,
                vertical: AppDimensions.paddingSizeDefault,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppImages.images.core.svg.visa.svg(
                  height: 20.h,
                  width: 40.w,
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: AppDimensions.paddingSizeDefault,
              ),
              Points(),
              TextApp(
                '8014',
                style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeLarge,
                  fontWeight: FontWeightHelper.regular,
                  color: context.color.whiteColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.paddingSizeDefault),
          Row(
            children: [
              const SizedBox(
                width: AppDimensions.paddingSizeDefault,
              ),
              Column(
                children: [
                  VisaText(text: 'Card holder', isTitle: true),
                  VisaText(text: 'KELLY OLIVER',isTitle: false,),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: VisaText(text: 'Expires', isTitle: true)),
                  VisaText(text: '08/21',isTitle: false,),
                ],
              ),
              const SizedBox(
                width: AppDimensions.paddingSizeDefault,
              ),
            ],
          )
        ],
      ),
            ),
    );
  }
}

class VisaText extends StatelessWidget {
  const VisaText({
    super.key, required this.text, required this.isTitle,
  });
  final String text;
  final bool isTitle;
  @override
  Widget build(BuildContext context) {
    return TextApp(
      text,
      style: context.textStyle.copyWith(
        fontSize:isTitle? AppDimensions.fontSizeSmall: AppDimensions.fontSizeExtraLarge20,
        fontWeight:isTitle? FontWeightHelper.medium: FontWeightHelper.regular,
        color: context.color.whiteColor,
      ),
    );
  }
}

class Points extends StatelessWidget {
  const Points({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppDimensions.paddingSizeExtraSmall,
      children: [
        const VisaPoint(),
        const VisaPoint(),
        const VisaPoint(),
        const VisaPoint(),
        const SizedBox(
          width: AppDimensions.paddingSizeExtraSmall,
        ),
        const VisaPoint(),
        const VisaPoint(),
        const VisaPoint(),
        const VisaPoint(),
        const SizedBox(
          width: AppDimensions.paddingSizeExtraSmall,
        ),
        const VisaPoint(),
        const VisaPoint(),
        const VisaPoint(),
        const VisaPoint(),
        SizedBox(
          width: AppDimensions.paddingSizeSmall,
        ),
      ],
    );
  }
}

class VisaPoint extends StatelessWidget {
  const VisaPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.h,
      width: 9.w,
      decoration: BoxDecoration(
        color: context.color.whiteColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
