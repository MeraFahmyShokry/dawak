import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leadingWidget;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;
  final bool ShowLeading;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.leadingWidget,
    this.ShowLeading = true,
    this.actions,
    this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: ShowLeading ? null : SizedBox(),
      leadingWidth: ShowLeading ? null : 0,
      // automaticallyImplyLeading: true,
      // leading: IconButton(
      //   icon:
      //
      //   !Navigator.canPop(context)?SizedBox():
      //   leadingWidget ??
      //
      //      (context.isArabicLocal?
      //       Icon(
      //         Icons.arrow_back_ios,
      //         color: context.color.primaryColor,
      //       ):
      //      Icon(
      //        Icons.arrow_back_ios,
      //        color: context.color.primaryColor,
      //      )),
      //   onPressed: onBackPressed ?? () => Navigator.pop(context),
      // ),
      actions: actions,
      title: Text(
        title,
        style: TextStyle(
          color: context.color.titleColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


