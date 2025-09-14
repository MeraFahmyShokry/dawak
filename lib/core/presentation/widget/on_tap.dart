import 'package:flutter/material.dart';

class OnTap extends StatelessWidget {
  const OnTap({super.key, required this.onTap, required this.child});

  final Function() onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: child,
    );
  }
}
