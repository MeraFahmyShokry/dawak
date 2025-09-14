import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/cached_network_image_utill.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/util/style/images/assets.gen.dart';
import '../../../../core/presentation/widget/text_app.dart';

class ClinicCardItem extends StatelessWidget {
  String? image,
      clinicName,
      clinicAddress,
      normalCheckPrice,
      argentCheckPrice,
      consultationPrice;

  ClinicCardItem({
    super.key,
    required this.image,
    required this.clinicName,
    required this.clinicAddress,
    required this.normalCheckPrice,
    required this.argentCheckPrice,
    required this.consultationPrice,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      width: MediaQuery.of(context).size.width * 0.6,
      margin: EdgeInsetsDirectional.symmetric(vertical: 10,horizontal: 3),
      padding: EdgeInsetsDirectional.all(16),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            CustomContainerCard(
              padding: EdgeInsetsDirectional.all(10),
                child: CustomCachedNetworkImage(
                  imageUrl: image ?? '',
                  width: 24,
                  height: 24,
                )
                // AppImages.images.core.svg.clinicDetailsIcon.svg(
                //   width: 24,
                //   height: 24,
                //   colorFilter: ColorFilter.mode(context.color.primaryColor!, BlendMode.srcIn),
                // ),
                ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                TextApp(
                  LocaleKeys.clinicDetails.tr(),
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeDefault,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.titleColor),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 4,
                    children: [
                      AppImages.images.core.svg.clinicNameIcon.svg(
                        width: 12,
                        height: 12,
                        colorFilter: ColorFilter.mode(context.color.primaryColor!,BlendMode.srcIn),
                      ),
                      TextApp(
                        clinicName ?? '',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 4,
                    children: [
                      AppImages.images.core.svg.locationIcon.svg(
                        width: 12,
                        height: 12,
                      ),
                      TextApp(
                        clinicAddress ?? '',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                TextApp(
                  LocaleKeys.pricing.tr(),
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeDefault,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.titleColor),
                ),
                if (normalCheckPrice != null)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 3),
                    child: Row(
                      spacing: 8,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 4,
                          children: [
                            AppImages.images.core.svg.stethoscopeIcon.svg(
                              width: 12,
                              height: 12,
                              colorFilter: ColorFilter.mode(
                                  context.color.secondaryColor!,
                                  BlendMode.srcIn),
                            ),
                            TextApp(
                              '${LocaleKeys.appointmentPrice.tr()} :',
                              style: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeSmall,
                                  fontWeight: FontWeightHelper.medium,
                                  color: context.color.black),
                            ),
                          ],
                        ),
                        Spacer(),
                        TextApp(
                          '${normalCheckPrice}',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.semiBold,
                              color: context.color.black),
                        ),
                      ],
                    ),
                  ),
                if (argentCheckPrice != null)
                  Padding(
                  padding: const EdgeInsetsDirectional.only(start: 3),
                  child: Row(
                    spacing: 8,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 4,
                        children: [
                          AppImages.images.core.svg.stethoscopeIcon.svg(
                            width: 12,
                            height: 12,
                            colorFilter: ColorFilter.mode(context.color.secondaryColor!,BlendMode.srcIn),
                          ),
                          TextApp(
                            '${LocaleKeys.appointmentPrice.tr()} :',
                            style: context.textStyle.copyWith(
                                fontSize: AppDimensions.fontSizeSmall,
                                fontWeight: FontWeightHelper.medium,
                                color: context.color.black),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextApp(
                          '${argentCheckPrice}',
                          style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.semiBold,
                            color: context.color.black),
                      ),
                    ],
                  ),
                ),
                if (consultationPrice != null)
                  Padding(
                  padding: const EdgeInsetsDirectional.only(start: 3),
                  child: Row(
                    spacing: 8,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 4,
                        children: [
                          AppImages.images.core.svg.stethoscopeIcon.svg(
                            width: 12,
                            height: 12,
                            colorFilter: ColorFilter.mode(context.color.secondaryColor!,BlendMode.srcIn),
                          ),
                          TextApp(
                            '${LocaleKeys.consultationPrice.tr()} :',
                            style: context.textStyle.copyWith(
                                fontSize: AppDimensions.fontSizeSmall,
                                fontWeight: FontWeightHelper.medium,
                                color: context.color.black),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextApp(
                          '${consultationPrice}',
                          style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.semiBold,
                            color: context.color.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
