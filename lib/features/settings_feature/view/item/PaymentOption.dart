import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class PaymentOption extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentOption({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: CustomContainerCard(
          padding: EdgeInsets.all(12),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10),
          //   border: Border.all(
          //     color: isSelected ? Colors.blue : Colors.grey.shade300,
          //     width: isSelected ? 2 : 1,
          //   ),
          // ),
          child: Row(
            children: [
              Radio(
                value: true,
                groupValue: isSelected,
                onChanged: (value) => onTap(),
                activeColor: context.color.primaryColor,
              ),
              Image.asset(imagePath, width: 52, height: 35),
              SizedBox(width: 10),
              TextApp(
                title,
                style: TextStyle(
                  fontSize: AppDimensions.fontSizeDefault,
                  fontWeight: FontWeightHelper.medium,
                  color: context.color.titleColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
