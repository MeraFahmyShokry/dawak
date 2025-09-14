import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:flutter/material.dart';

class CustomListViewBuilder extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final int itemCount;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final Axis? scrollDirection;

  const CustomListViewBuilder({
    super.key,
    required this.itemBuilder,
    this.separatorBuilder,
    this.padding,
    this.scrollDirection,
    this.controller,
    this.physics,
    this.shrinkWrap = false,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return itemCount == 0
        ? AppImages.images.core.svg.noHistoryData.svg()
        : ListView.separated(
            physics: physics,
            shrinkWrap: shrinkWrap,
            controller: controller,
            padding: padding,
            itemBuilder: itemBuilder,
            separatorBuilder:
                separatorBuilder ?? (context, index) => const SizedBox(),
            // separatorBuilder?? (context, index) =>   SizedBox(height: 0),
            itemCount: itemCount,
            scrollDirection: (scrollDirection ?? Axis.vertical),
          );
  }
}
