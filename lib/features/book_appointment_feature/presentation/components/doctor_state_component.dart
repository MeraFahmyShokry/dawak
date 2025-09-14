import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/widget/text_app.dart';

class DoctorStatsComponent extends StatelessWidget {
  String experienceCount;
  String patientCount;
  String ratingCount;

  DoctorStatsComponent({
    super.key,
    required this.experienceCount,
    required this.patientCount,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row( 
      spacing: 18.5,
      children: [
        Expanded(
          child: Container(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 16),
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: context.color.borderColor!),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                TextApp(
                  textOverflow: TextOverflow.ellipsis,
                  LocaleKeys.experience.tr(),
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeSmall,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.primaryColor),
                ),
                TextApp(
                  textOverflow: TextOverflow.ellipsis,
                  '+${experienceCount} Y',
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeSmall,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.primaryColor),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 16),
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: context.color.borderColor!),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                TextApp(
                  textOverflow: TextOverflow.ellipsis,
                  LocaleKeys.reviews.tr(),
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeSmall,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.primaryColor),
                ),
                TextApp(
                  textOverflow: TextOverflow.ellipsis,
                  '+${ratingCount}',
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeSmall,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.primaryColor),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 16),
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: context.color.borderColor!),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                TextApp(
                  textOverflow: TextOverflow.ellipsis,
                  LocaleKeys.patients.tr(),
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeSmall,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.primaryColor),
                ),
                TextApp(
                  textOverflow: TextOverflow.ellipsis,
                  '+${patientCount}',
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeSmall,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.primaryColor),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
