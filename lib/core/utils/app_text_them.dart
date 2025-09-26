import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextTheme {
  // static String getFontFamily({bool isHeading = false}) {
  //   final context = getIt<AppRouter>().navigatorKey.currentContext;
  //   final isArabic = context?.isArabic ?? false;
  //   return isArabic ? FontFamily.alexandria : (isHeading ? FontFamily.sora : FontFamily.notoSans);
  // }

  static TextStyle _textStyle(double fontSize, FontWeight fontWeight,
      {bool isHeading = false, bool underline = false,Color decorationColor = AppColors.primary }) {
    return TextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: AppColors.textColor,
      // fontFamily: getFontFamily(isHeading: isHeading),
      decoration: underline ? TextDecoration.underline : null,
      decorationColor: underline ?  decorationColor:null,
    );
  }

  // Heading Texts
  static TextStyle get headingLarge => _textStyle(24, FontWeight.w600, isHeading: true);

  static TextStyle get headingMedium => _textStyle(22, FontWeight.w600, isHeading: true);

  static TextStyle get headingSmall => _textStyle(20, FontWeight.w600, isHeading: true);

  // Body Texts
  static TextStyle get bodyLarge => _textStyle(18, FontWeight.w400);

  static TextStyle get bodyMedium => _textStyle(16, FontWeight.w400);

  static TextStyle get bodySmall => _textStyle(14, FontWeight.w400);

  static TextStyle get bodyXSmall => _textStyle(12, FontWeight.w400);

  static TextStyle get bodyXXSmall => _textStyle(10, FontWeight.w400);

  // mediumBold Body Texts
  static TextStyle get bodyLargeMediumBold => _textStyle(18, FontWeight.w500);

  static TextStyle get bodyMediumMediumBold => _textStyle(16, FontWeight.w500);

  static TextStyle get bodySmallMediumBold => _textStyle(14, FontWeight.w500);

  static TextStyle get bodyXSmallMediumBold => _textStyle(12, FontWeight.w500);

  // SemiBold Body Texts
  static TextStyle get bodyLargeSemiBold => _textStyle(18, FontWeight.w600);

  static TextStyle get bodyMediumSemiBold => _textStyle(16, FontWeight.w600);

  static TextStyle get bodySmallSemiBold => _textStyle(14, FontWeight.w600);

  // Link Texts
  static TextStyle get linkSmall => _textStyle(14, FontWeight.w400, underline: true);
}
