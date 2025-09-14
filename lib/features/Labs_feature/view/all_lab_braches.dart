import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Labs_feature/view/item/BranchItem.dart';
import 'package:clean_arc/features/Labs_feature/view/labs_details_view.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/SortResultsWidget.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/labs_card.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class AllLabBrachesSceen extends StatefulWidget {
  const AllLabBrachesSceen({super.key});

  @override
  State<AllLabBrachesSceen> createState() => _AllLabBrachesSceenState();
}

class _AllLabBrachesSceenState extends State<AllLabBrachesSceen> {
  final List<Widget> durationFields = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: "معمل المختبر"),

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
                          itemBuilder: (context, index) => BranchItem(
                              title: "الهرم",
                              address: "21 St. Mostafa Mahmoud - Cairo - Egypt",
                              postalCode: "19014",
                              actionButton: CustomButton(
                                width: 120,
                                onPressed: () {},
                                title: LocaleKeys.bookNow.tr(),
                              ))),
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
