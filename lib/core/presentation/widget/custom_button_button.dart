import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onPressed,
    this.child,
    this.height,
    this.title,
    this.titleFontSize,
    this.icon,
    this.bgColor,
    this.titleColor,
    this.borderColor,
    this.withBorderOnly = false,
    this.width,
    this.isLoading ,
    super.key, this.padding, this.borderRadius,
  });

  final VoidCallback? onPressed;
  final Widget? child;
  final Widget? icon;
  final String? title;
  final double? titleFontSize;
  final double? borderRadius;
  final bool withBorderOnly;
  final double? height;
  final Color? bgColor;
  final Color? titleColor;
  final Color? borderColor;
  final double? width;
  final bool ?isLoading;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ??
          () {
            if (isLoading == true) {
              return;
            }
            if (onPressed != null) {
              onPressed!();
            }
          },
      child: Container(
        padding: padding??10.padHorizontal+8.padVertical,

        decoration: ShapeDecoration(
          color: bgColor ?? context.color.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius??9.r),
            side: withBorderOnly
                ? BorderSide(color: borderColor ?? context.color.borderColor!)
                : BorderSide.none,
          ),
        ),
        child: Center(
            child: (isLoading==true)
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: SizedBox(
                        width: 25,
                        height: 25,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        )),
                  )
                : child ??
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextApp(
                          title ?? '',
                          style: context.textStyle.copyWith(
                            fontSize: titleFontSize ?? 14.sp,
                            fontWeight: FontWeightHelper.semiBold,
                            color: titleColor ?? Colors.white,
                          ),
                        ),
                        if (icon != null)
                          SizedBox(
                            width: 10,
                          ),
                        if (icon != null) icon!,
                      ],
                    )),
      ),
    );
  }
}

//assets/images/core/png/healthicons_doctor-24px.png
