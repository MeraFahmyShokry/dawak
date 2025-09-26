import 'dart:io';

import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/widget/on_tap.dart';

class UploadMedicalInsuranceImage extends StatelessWidget {
  const UploadMedicalInsuranceImage({super.key, required this.onTap, this.image});
final Function() onTap;
final File? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.insertYourMedicalInsuranceImage.tr(),
          style: AppTextTheme.bodySmallSemiBold
        ),
        8.verticalSpace,
        OnTap(
         onTap: onTap,
          child: DottedBorder(
                 options: RoundedRectDottedBorderOptions(
           color: AppColors.lightGrey,
           strokeWidth: 1.5,
           dashPattern: [10, 6],
           // borderType: BorderType.RRect,
           radius: Radius.circular(12.r),

                 ),
            child: Container(
              width: double.infinity,
              height: 144.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: image!=null? Image.file(
                image!,
                fit: BoxFit.cover,
              ):Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    AppImages.images.core.svg.addPhoto.svg(width: 35),
                  8.verticalSpace,
                  Text(
                    LocaleKeys.dragYourImageHere.tr(),
                    style: AppTextTheme.bodySmallMediumBold.copyWith(
                      color: Colors.grey
                    ),
                  ),
                  4.verticalSpace,
                  Text(
                    LocaleKeys.maxSize.tr(),
                    style:  AppTextTheme.bodyXXSmall.copyWith(
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
