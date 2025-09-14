import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: true,
      labelColor: context.color.primaryColor!,
      unselectedLabelColor: Colors.grey,
      indicatorColor: context.color.primaryColor!,
      indicatorWeight: 2.0,
      labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
      unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          fontFamily: FontFamilyHelper.geLocalozedFontFamily()),
      tabs: [
        Tab(
          text: context.translate.all,
        ),
        Tab(text: context.translate.upcoming),
        Tab(text: context.translate.completed),
        Tab(text: context.translate.cancelled),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
