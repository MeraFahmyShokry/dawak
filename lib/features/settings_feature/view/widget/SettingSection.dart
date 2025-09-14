import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class SettingSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SettingSection({Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextApp(
            title,
            style: TextStyle(
                fontSize: AppDimensions.fontSizeLarge,
                fontWeight: FontWeightHelper.medium,
                color: context.color.titleColor),
          ),
        ),
        Column(children: children),
      ],
    );
  }
}
