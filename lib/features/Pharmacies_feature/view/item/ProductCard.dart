import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Cart_feature/view/Caer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductCard extends StatelessWidget {
  final Image imageUrl;
  final String title;
  final String description;
  final String price;
  final String unit;
  final bool isAvailable;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.unit,
    required this.isAvailable,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            showProductDialog(context);
          },
          child: CustomContainerCard(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Center(child: imageUrl),
                  const SizedBox(height: 8),
                  TextApp(
                    title,
                    style: TextStyle(
                      fontSize: AppDimensions.fontSizeDefault,
                      fontWeight: FontWeight.bold,
                      color: context.color.titleColor,
                    ),
                  ),
                  TextApp(
                    description,
                    style: TextStyle(
                      fontSize: AppDimensions.fontSizeSmall,
                      color: context.color.grayColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 40,
                          height: 30,
                          decoration: BoxDecoration(
                            color: context.color.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartScreen()),
                              );
                            },
                            child: Icon(
                              IconlyLight.buy,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          TextApp(
                            "35 EGP",
                            style: TextStyle(
                              fontSize: AppDimensions.fontSizeDefault,
                              fontWeight: FontWeight.bold,
                              color: context.color.titleColor,
                            ),
                          ),
                          TextApp("Per tape",
                              style: TextStyle(
                                fontSize: AppDimensions.fontSizeDefault,
                                fontWeight: FontWeight.bold,
                                color: context.color.grayColor,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: CircleAvatar(
              backgroundColor: isAvailable
                  ? Colors.green.withOpacity(0.2)
                  : Colors.red.withOpacity(0.2),
              radius: 16,
              child: isAvailable
                  ? AppImages.images.demo.png.boxcheck.image()
                  : AppImages.images.demo.png.outofstock.image()),
        ),
      ],
    );
  }

  void showProductDialog(BuildContext context) {
    int quantity = 1;
    double pricePerUnit = 35.0;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              content: Container(
                width: 300.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/demo/png/panadoal.png",
                            fit: BoxFit.fill,
                            width: 30.w,
                            height: 30.h,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Panadol",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          context.translate.amount,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.remove,
                                          color: context.color.primaryColor
                                              ?.withOpacity(0.6),
                                        ))),
                              ),
                              Container(
                                  width: 1, height: 30, color: Colors.black),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: TextApp(
                                  quantity.toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  width: 1, height: 30, color: Colors.black),
                              GestureDetector(
                                onTap: () {},
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.add,
                                          color: context.color.primaryColor
                                              ?.withOpacity(0.6),
                                        ))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${context.translate.total}:",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text(
                            "${(quantity * pricePerUnit).toStringAsFixed(2)} EGP",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      width: double.infinity,
                      onPressed: () {
                        NavigationHelper.pop(context);
                      },
                      title:context.translate.add_to_cart,
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
