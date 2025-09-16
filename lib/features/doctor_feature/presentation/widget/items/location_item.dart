import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_them.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(20.r)
      ),
      padding: 12.padHorizontal + 7.padVertical,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImages.images.core.svg.locationIcon.svg(
              colorFilter: ColorFilter.mode(
                  AppColors.primary, BlendMode.srcIn),
              width: 22.w, height: 22.w),
          5.horizontalSpace,
          Text(
            "Maadi, Cairo",
            style: AppTextTheme.bodySmall.copyWith(
                color: AppColors.primary
            ),
          ),
        ],
      ),
    );
  }
}
