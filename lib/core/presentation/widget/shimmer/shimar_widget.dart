import 'package:clean_arc/core/presentation/widget/shimmer/shimmer.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class ShimmerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final Color? backgroundColor;
  final Color? baseColor;
  final Color? highlightColor;

  ShimmerWidget({this.height, this.width, this.child, this.backgroundColor, this.baseColor, this.highlightColor});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.grey.withOpacity(0.2),
      highlightColor: highlightColor ?? Colors.transparent,
      enabled: true,
      direction: ShimmerDirection.ltr,
      period: Duration(seconds: 1),
      child: child ??
          Container(
            height: height,
            width: width,
              decoration: BoxDecoration(
                color:  backgroundColor ?? context.color.grayColor?.withOpacity(.5),
                // borderRadius:
                // boxShape == BoxShape.circle ? null : (borderRadius ?? radius()),
                // gradient: gradient,
                // border: border,
                // boxShadow: boxShadow,
                // image: decorationImage,
                // shape: boxShape,
              ),
          ),
    );
  }
}
