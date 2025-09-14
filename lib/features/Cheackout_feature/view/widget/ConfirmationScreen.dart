import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/home_feature/presentation/view/home_view.dart';
import 'package:clean_arc/features/my_orders_feature/presentation/views/my_orders_view.dart';
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
           AppImages.images.demo.png.confairm.path,

              height: 340,
              width: 340,
            ),
            const SizedBox(height: 20),
            TextApp(
              context.translate.orderConfirmedSuccess







              ,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppDimensions.fontSizeLarge,
                fontWeight: FontWeightHelper.bold,
                color: context.color.titleColor,
              ),
            ),
            const SizedBox(height: 10),
            TextApp(
              context.translate.goToMyOrders







              ,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppDimensions.fontSizeDefault,
                color: context.color.textColor,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: CustomButton(onPressed: () {

                NavigationHelper.pushReplacementAll(context, HomeView());
                NavigationHelper.push(context, MyOrdersView());

              }, title:context. translate.myorders),
            ),
          ],
        ),
      ),
    );
  }
}
