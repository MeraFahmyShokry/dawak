import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
          text: LocaleKeys.all.tr(),
        ),
        Tab(text: LocaleKeys.upcoming.tr()),
        Tab(text: LocaleKeys.completed.tr()),
        Tab(text: LocaleKeys.cancelled.tr()),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
