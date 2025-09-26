import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    required this.fillItems,
  });

  final int fillItems;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 8.0.h,
      decoration: BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.all(Radius.circular(12.sp)),
      ),
      child: ClipRRect(
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.all(Radius.circular(12.sp)),
          color: AppColors.primary,
          value: fillItems/4,
          backgroundColor: AppColors.borderColor,
          valueColor: AlwaysStoppedAnimation<Color>(
              AppColors.primary),
        ),
      ),
    );
  }
}
