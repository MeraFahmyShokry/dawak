import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class PaymentInformationRadioItem extends StatelessWidget {
  const PaymentInformationRadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Radio(
                value: true,
                groupValue: true,
                onChanged: (value) {
                },
                activeColor: context.color.primaryColor,
              );
  }
}
