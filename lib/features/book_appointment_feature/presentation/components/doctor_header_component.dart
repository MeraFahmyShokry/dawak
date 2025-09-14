import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/presentation/widget/cached_network_image_utill.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/widget/text_app.dart';

class DoctorHeaderComponent extends StatelessWidget {
  String doctorName;
  String specialist;
  String rating;
  String distance;
  String clinicCount;
  String imageUrl;

  DoctorHeaderComponent({
    super.key,
    required this.doctorName,
    required this.specialist,
    required this.rating,
    required this.distance,
    required this.clinicCount,
    required this.imageUrl,
   });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: CustomCachedNetworkImage(
                imageUrl: imageUrl, width: 78, height: 78, fit: BoxFit.cover)
            // AppImages.images.demo.png.doctor2
            //     .image(),
            ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextApp(
              doctorName,
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeDefault,
                  fontWeight: FontWeightHelper.medium,
                  color: context.color.black),
            ),
            TextApp(
              specialist,
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeSmall,
                  fontWeight: FontWeightHelper.regular,
                  color: context.color.gray_A4A7AE),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              spacing: 6.5,
              children: [
                Row(
                  children: [
                    AppImages.images.core.svg.starReviewIcon.svg(
                      width: 14,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    TextApp(
                      rating,
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeSmall,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.black),
                    )
                  ],
                ),
                if (distance.isNotEmpty)
                  Row(
                    children: [
                      AppImages.images.core.svg.locationIcon.svg(
                        width: 14,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      TextApp(
                        '${distance} ${LocaleKeys.km.tr()}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.black),
                      )
                    ],
                  ),
                Row(
                  children: [
                    AppImages.images.core.svg.smallClinicIcon.svg(
                      width: 14,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    TextApp(
                      '${clinicCount ?? '1'} ${LocaleKeys.clinics.tr()}',
                      style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeSmall,
                          fontWeight: FontWeightHelper.medium,
                          color: context.color.black),
                    )
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
