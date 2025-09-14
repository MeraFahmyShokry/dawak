import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/util/style/images/fonts.gen.dart';

class CustomComplainTextFieldComponent extends StatelessWidget {
  String title;

  CustomComplainTextFieldComponent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: context.color.borderColor!),
      ),
      child: TextField(
        controller: TextEditingController(text:title??''),
        cursorColor: context.color.primaryColor,
        clipBehavior: Clip.hardEdge,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          border: InputBorder.none,
          hintText: LocaleKeys.writeYourSymptomsOfFatigue.tr(),
          hintStyle: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeSmall,
              fontWeight: FontWeightHelper.regular,
              color: context.color.gray_41465180),
        ),
        maxLines: 5, // Allow multiple lines for longer text
      ),
    );
  }
}
