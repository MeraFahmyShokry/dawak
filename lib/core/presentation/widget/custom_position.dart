import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:flutter/material.dart';

class CustomPositioned extends StatelessWidget {
  final Widget child;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  const CustomPositioned({
    Key? key,
    required this.child,
    this.top,
    this.bottom,
    this.left,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: context.isArabicLocal ? null :(left ?? 0) ,
      right: context.isArabicLocal ?(right ?? 0) : null ,
      child: child,
    );
  }
}

class CustomEdgeInsets extends EdgeInsets {
  CustomEdgeInsets({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,
    required BuildContext context,
  }) : super.only(
    top: top,
    bottom: bottom,
    left: !context.isArabicLocal ? right : left,
    right: !context.isArabicLocal ? left : right,
  );
}

class CustomBorderRadius extends BorderRadius {
  CustomBorderRadius({
    required BuildContext context,
    Radius left = Radius.zero,
    Radius right = Radius.zero,
  }) : super.horizontal(
    left: !context.isArabicLocal ? right : left,
    right: !context.isArabicLocal ? left : right,
  );
}