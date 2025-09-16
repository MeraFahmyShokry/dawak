import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

import '../../../../../core/presentation/util/style/images/assets.gen.dart';
import '../../../../../core/presentation/widget/on_tap.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_them.dart';

class CustomAppBarDrawer extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarDrawer({
    super.key,
    required this.scaffoldKey, required this.child,
  });
final Widget child;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          OnTap(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: 5.padRight + 5.padVertical,
              child: AppImages.images.core.svg.arrowBack.svg(
                  width: 25.w, height: 25.w),
            ),
          ),
          child,
        ],
      ),
      automaticallyImplyLeading: false,
      actions: [
        OnTap(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: 15.padHorizontal,
            child: Icon(
              Icons.menu,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}