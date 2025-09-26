import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/user_type.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AccountTypeItem extends StatelessWidget {
  final UserType type;
  final bool isSelected;
  final VoidCallback? onTap;

  const AccountTypeItem({
    super.key,
    required this.type,
    required this.onTap, this.isSelected=false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: type.isActive==true?onTap:null,
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          color: isSelected?AppColors.primary:Colors.transparent,
          borderPadding: 2.padAll,
          strokeWidth: 2,
          radius: Radius.circular(12)

        ),
        child: Container(
         width: double.infinity,
          decoration: BoxDecoration(
            color: type.isActive==true?isSelected?AppColors.primaryLight:Colors.white:AppColors.borderColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(type.imagePath??"",width: 50, height: 20, fit: BoxFit.contain),
              SizedBox(height: 16),
              TextApp(
                type.label??"",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: context.color.titleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
