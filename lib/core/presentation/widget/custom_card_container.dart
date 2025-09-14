import 'package:clean_arc/app.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class CustomContainerCard extends StatelessWidget {
  EdgeInsetsGeometry? padding;
  Widget? child;
  double? height;
  double? width;
  double? radius;
  AlignmentGeometry? alignment;
  EdgeInsetsGeometry? margin;


  CustomContainerCard({
    super.key,
    this.padding,
    this.child,
    this.height,
    this.width,
    this.alignment,
    this.margin,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      alignment: alignment,
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: context.color.whiteColor,
        borderRadius: BorderRadius.circular(radius??10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: child,
    );
  }
}
