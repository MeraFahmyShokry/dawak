import 'dart:ui';

import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  final String title;
  final String price;
  final int quantity;
  // final VoidCallback onIncrease;
  // final VoidCallback onDecrease;

  const CartItemWidget({
    required this.title,
    required this.price,
    required this.quantity,
    // required this.onIncrease,
    // required this.onDecrease,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomContainerCard(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    // child: AppImages.images.core.png.mage_tablet.png(),

                    child: Image.asset(
                      "assets/images/core/png/mage_tablet.png",
                      fit: BoxFit.fill,
                      width: 30.w,
                      height: 30.h,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    TextApp(title,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add, color: Colors.blue),
                          onPressed: () {},
                          // onIncrease,
                        ),
                        TextApp("$quantity", style: TextStyle(fontSize: 16)),
                        IconButton(
                          icon: Icon(Icons.remove, color: Colors.blue),
                          onPressed: () {},
                          // onDecrease,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            TextApp("$price EGP",
                style: TextStyle(fontWeight: FontWeightHelper.bold)),
          ],
        ),
      ),
    );
  }
}
