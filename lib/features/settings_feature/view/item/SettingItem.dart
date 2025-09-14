import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;

  const SettingItem({
    Key? key,
    required this.title,
    this.onTap,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextApp(title,
          style: TextStyle(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium)),
      trailing: trailing ??
          Icon(Icons.arrow_forward_ios,
              size: 16, color: context.color.primaryColor),
      onTap: onTap,
    );
  }
}
