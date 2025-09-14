import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const DrawerItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: 3.padVertical,
            child: Text(
                title,
              style: AppTextTheme.bodySmall.copyWith(
              ),
            ),
          ),
          Divider(color: AppColors.lightGrey2,)
        ],
      ),
    );
  }
}
