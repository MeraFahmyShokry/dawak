

import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpText extends StatelessWidget {
  final String text;       
  final String actionText; 
  final VoidCallback onTap;

  const SignUpText({
    Key? key,
    required this.text,
    required this.actionText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text, 
          style: AppTextTheme.bodySmall
        ),
        OnTap(
          onTap: onTap,
          child: Padding(
            padding: 5.padAll,
            child: Text(
              actionText,
              style: AppTextTheme.bodySmallSemiBold.copyWith(
                color: AppColors.primary
              )
            ),
          ),
        ),
      ],
    );
  }
}
