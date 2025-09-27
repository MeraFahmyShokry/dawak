import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils/translate.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_them.dart';
import 'on_tap.dart';

class CustomAppBarNew extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBarNew({super.key, required this.title, required this.isHaveBackButton, this.backgroundColor, this.foregroundColor, this.titleColor, this.iconColor, this.elevation, this.onBackPressed, this.actions, this.toolbarHeight});
  final String title;
  final bool isHaveBackButton;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? titleColor;
  final Color? iconColor;
  final double? elevation;
  final Function()? onBackPressed;
  final List<Widget>? actions;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: kToolbarHeight + 45,
      scrolledUnderElevation: 0,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor ?? AppColors.white,
      title: Text(
         title,
        style: AppTextTheme.bodyLargeSemiBold.copyWith(
          color: AppColors.primary,
        ),
      ),
      actions: actions,
      automaticallyImplyLeading: isHaveBackButton,
      leading: isHaveBackButton
          ? OnTap(
        onTap: () {
          onBackPressed != null ? onBackPressed!() : Navigator.pop(context);
        },
        child: Padding(
          padding: context.isArabic ? 15.padRight : 15.padLeft,
          child: Icon(Icons.arrow_back_ios, size: 15.h, color: AppColors.primary),
        ),
      )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 30);
}
