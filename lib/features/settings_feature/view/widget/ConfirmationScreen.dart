import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  final VoidCallback onViewOrders;

  const ConfirmationScreen({Key? key, required this.onViewOrders})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/demo/png/confairm.png",
              height: 340,
              width: 340,
            ),
            const SizedBox(height: 20),
            TextApp(
              "Your Order was successfully confirmed!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppDimensions.fontSizeLarge,
                fontWeight: FontWeightHelper.bold,
                color: context.color.titleColor,
              ),
            ),
            const SizedBox(height: 10),
            TextApp(
              "Go to My orders to view your orders list",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppDimensions.fontSizeDefault,
                color: context.color.textColor,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: CustomButton(onPressed: onViewOrders, title: "My Orders"),
            ),
          ],
        ),
      ),
    );
  }
}
