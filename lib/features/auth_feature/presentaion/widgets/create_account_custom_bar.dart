import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/progress_line.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/widget/on_tap.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_them.dart';
import '../../../../gen/locale_keys.g.dart';

class CreateAccountCustomBar extends StatelessWidget {
  const CreateAccountCustomBar({
    super.key, required this.fillItems, this.haveBackButton=true,
  });
  final int fillItems;
  final bool haveBackButton;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        38.verticalSpace,
        OnTap(
          onTap: (){
            haveBackButton?Navigator.pop(context):null;
          },
          child: Row(
            children: [
              if(haveBackButton)AppImages.images.core.svg.arrowBack.svg(),
              8.horizontalSpace,
              Text(
                LocaleKeys.createAccount.tr(),
                style: AppTextTheme.bodyLargeSemiBold.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
        24.verticalSpace,
        ProgressLine(fillItems: fillItems),
      ],
    );
  }
}
