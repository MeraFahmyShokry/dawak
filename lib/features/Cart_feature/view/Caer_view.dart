import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Cart_feature/view/widget/CartItemWidget.dart';
import 'package:clean_arc/features/Cart_feature/view/widget/TotalSection.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.translate.cart),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextApp(context.translate.items + ": 5 ",
                    style: TextStyle(
                        fontSize: AppDimensions.fontSizeDefault,
                        color: context.color.primaryColor)),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CartItemWidget(
                    title: "Panadol",
                    price: "250",
                    quantity: 1,
                  );
                },
              ),
            ),
            TotalSection()
          ],
        ),
      ),
    );
  }
}
