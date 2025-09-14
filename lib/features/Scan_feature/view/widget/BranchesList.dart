import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Labs_feature/view/item/BranchItem.dart';
import 'package:clean_arc/features/Labs_feature/view/labs_details_view.dart';
import 'package:flutter/material.dart';

class BranchesList extends StatelessWidget {
  const BranchesList({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: context.color.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        height: 350,
        child: RawScrollbar(
          trackVisibility: true,
          trackBorderColor: context.color.grayColor,
          thumbVisibility: true,
          thumbColor: context.color.primaryColor?.withOpacity(0.7),
          radius: const Radius.circular(10),
          thickness: 8,
          trackRadius: const Radius.circular(10),
          trackColor: context.color.grayColor?.withOpacity(0.1),
          controller: scrollController,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 10),
            controller: scrollController,
            itemCount: 5,
            itemBuilder: (context, index) {
              return BranchItem(
                title: "الهرم",
                address: "21 St. Mostafa Mahmoud - Cairo - Egypt",
                postalCode: "19014",
              );
            },
          ),
        ),
      ),
    );
  }
}
