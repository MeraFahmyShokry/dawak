import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ShowAllWidget extends StatelessWidget {
  final String title;
  final void Function()?  onTap;

  const ShowAllWidget({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextTheme.bodyMediumSemiBold,
        ),
        if (onTap != null) OnTap(
            onTap:  onTap!,
            child: TextApp(LocaleKeys.viewMore.tr())),
      ],
    );
  }
}
