
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
return SizedBox(
  width: double.infinity,
  child: InkWell(
    onTap: onPressed,
    borderRadius: BorderRadius.circular(8),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      decoration: BoxDecoration(
        color: context.color.whiteColor!,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: context.color.borderColor!),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(icon, width: 24, height: 24),
            10.horizontalSpace,
            Text(text, style: AppTextTheme.bodyMediumSemiBold.copyWith(
              fontWeight: FontWeight.w500
            )),
          ],
        ),
      ),
    ),
  ),
);

  }
}
