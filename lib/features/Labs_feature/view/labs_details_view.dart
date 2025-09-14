import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Cheackout_feature/view/Cheackout_view.dart';
import 'package:clean_arc/features/Labs_feature/view/AllLabBrachesPricesSceen.dart';
import 'package:clean_arc/features/Labs_feature/view/all_lab_braches.dart';
import 'package:clean_arc/features/Labs_feature/view/item/TestPriceCard.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/AboutSection.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/BranchesList.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/LabHeader.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/LabStats.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class LabDetailsScreen extends StatelessWidget {
  const LabDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Almokhtabar"),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    LabHeader(),
                    SizedBox(height: 20),
                    LabStats(),
                    ShowAllWidget(
                      title: LocaleKeys.aboutMe.tr(),
                    ),
                    AboutSection(),
                    ShowAllWidget(
                      title: LocaleKeys.branches.tr(),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllLabBrachesSceen()),
                        );
                      },
                    ),
                    BranchesList(),
                    ShowAllWidget(
                      title: LocaleKeys.prices.tr(),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AlllBrachespriceSceen()),
                        );
                      },
                    ),
                    TestPriceCard(
                      testName: "Urine",
                      inLabPrice: "150 EGP",
                      inHomePrice: "270 EGP",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              width: double.infinity,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutScreen()),
                );
              },
              title: LocaleKeys.bookingNow.tr(),
            ),
          ),
        ],
      ),
    );
  }
}
