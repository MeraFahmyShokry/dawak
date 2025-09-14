import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Labs_feature/view/item/BranchItem.dart';
import 'package:clean_arc/features/Labs_feature/view/item/TestPriceCard.dart';
import 'package:clean_arc/features/Labs_feature/view/labs_details_view.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/SortResultsWidget.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/labs_card.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:flutter/material.dart';

class AlllBrachespriceSceen extends StatefulWidget {
  const AlllBrachespriceSceen({super.key});
  @override
  State<AlllBrachespriceSceen> createState() => _AlllBrachespriceSceenState();
}

class _AlllBrachespriceSceenState extends State<AlllBrachespriceSceen> {
  final List<Widget> durationFields = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            CustomAppBar(title: 'معمل المختبر'),

            //  const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16),
            //   child: TitleAppBar(title: 'معمل المختبر '),
            // ),
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) => TestPriceCard(
                          testName: "Urine",
                          inLabPrice: "150 EGP",
                          inHomePrice: "270 EGP",
                        ),
                      ),
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
