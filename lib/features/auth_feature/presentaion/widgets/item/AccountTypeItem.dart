import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class AccountTypeItem extends StatelessWidget {
  final String imagePath;
  final String? imageSvgPath;
  final String label;
  final VoidCallback? onTap;

  const AccountTypeItem({
    super.key,
    required this.imagePath,
      this.imageSvgPath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
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
            imageSvgPath != null
                ? SvgPicture.asset(imageSvgPath ?? '')
                : Image.asset(imagePath,
                    width: 50, height: 20, fit: BoxFit.contain),
            SizedBox(height: 16),
            TextApp(
              label,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: context.color.titleColor),
            ),
          ],
        ),
      ),
    );
  }
}
