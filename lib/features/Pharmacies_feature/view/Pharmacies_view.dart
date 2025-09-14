import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Labs_feature/view/labs_details_view.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/SortResultsWidget.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/labs_card.dart';
import 'package:clean_arc/features/Pharmacies_feature/view/item/ProductCard.dart';
import 'package:clean_arc/features/Pharmacies_feature/view/widget/Pharmacies_card.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:flutter/material.dart';

class PharmaciesScreen extends StatefulWidget {
  const PharmaciesScreen({super.key});

  @override
  State<PharmaciesScreen> createState() => _PharmaciesScreenState();
}

class _PharmaciesScreenState extends State<PharmaciesScreen> {
  final List<Widget> durationFields = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: context.translate.pharmacies),
            const SizedBox(height: 10),
            Padding( 
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SearchComponent(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SortResultsWidget(
                        resultCount: 150,
                        onSortTap: () {},
                      ),
                    ),
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) => PharmaciesCard(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
