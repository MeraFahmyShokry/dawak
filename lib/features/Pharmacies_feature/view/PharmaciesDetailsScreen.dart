import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Pharmacies_feature/view/item/CategoryChips.dart';
import 'package:clean_arc/features/Pharmacies_feature/view/item/ProductCard.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/custom_home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class PharmaciesDetailsScreen extends StatefulWidget {
  const PharmaciesDetailsScreen({super.key});

  @override
  _PharmaciesDetailsScreenState createState() =>
      _PharmaciesDetailsScreenState();
}

class _PharmaciesDetailsScreenState extends State<PharmaciesDetailsScreen> {
  String selectedCategory = "All";

  final Map<String, List<Map<String, dynamic>>> productsData = {
    "All": List.generate(
        7,
        (index) => {
              'title': "Product ${index + 1}",
              'description':
                  "All Product Description Pain reliever and antipyretic n Pain reliever and ant ${index + 1}",
              'price': "\$5",
              'unit': "Unit ${index + 1}",
              'isAvailable': index.isEven,
            }),
    "Neurology": List.generate(
        7,
        (index) => {
              'title': "Neurology Product ${index + 1}",
              'description':
                  "Pain reliever and antipyretic Pain reliever and antipyretic ${index + 1}",
              'price': "\$10",
              'unit': "Unit ${index + 1}",
              'isAvailable': index.isOdd,
            }),
    "Orthopedic": List.generate(
        7,
        (index) => {
              'title': "Orthopedic Product ${index + 1}",
              'description': "Orthopedic Description ${index + 1}",
              'price': "\$8",
              'unit': "Unit ${index + 1}",
              'isAvailable': true,
            }),
    "Ophthalmology": List.generate(
        7,
        (index) => {
              'title': "Ophthalmology Product ${index + 1}",
              'description': "Ophthalmology Description ${index + 1}",
              'price': "\$12",
              'unit': "Unit ${index + 1}",
              'isAvailable': index % 3 == 0,
            }),
    "Dentistry": List.generate(
        7,
        (index) => {
              'title': "Dentistry Product ${index + 1}",
              'description': "Dentistry Description ${index + 1}",
              'price': "\$7",
              'unit': "Unit ${index + 1}",
              'isAvailable': index % 2 == 0,
            }),
  };

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = productsData[selectedCategory]!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomHomeAppbar(
                showNotification: false,
                showArrowBack: true,
                borderRadius: 1000,
                titleWidget: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        IconlyLight.location,
                        color: context.color.primaryColor,
                      ),
                      const SizedBox(width: 10),
                      TextApp(
                        'Elezaby, New Cairo',
                        color: context.color.titleColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CategoryChips(
              categories: productsData.keys.toList(),
              onCategorySelected: (category) {
                setState(() {
                  selectedCategory = category;
                });
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.63,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    imageUrl: AppImages.images.demo.png.panadoal.image(
                      width: 140,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    title: product['title'],
                    description: product['description'],
                    price: product['price'],
                    unit: product['unit'],
                    isAvailable: product['isAvailable'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
