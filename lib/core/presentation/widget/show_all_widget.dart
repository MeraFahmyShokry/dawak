import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ShowAllWidget extends StatelessWidget {
  String title;
  void Function()?  onTap;

  ShowAllWidget({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextApp(
          title,
          fontWeight: FontWeightHelper.bold,
          fontSize: AppDimensions.fontSizeLarge,
          color: context.color.titleColor,
        ),
        if (onTap != null) InkWell(

            onTap:  onTap  ,
            child: TextApp(LocaleKeys.seeAll.tr())),
      ],
    );
  }
}
