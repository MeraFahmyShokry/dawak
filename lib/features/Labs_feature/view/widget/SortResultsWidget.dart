import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';

class SortResultsWidget extends StatelessWidget {
  final int resultCount;
  final VoidCallback onSortTap;

  const SortResultsWidget({
    Key? key,
    required this.resultCount,
    required this.onSortTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onSortTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppImages.images.core.svg.filter.path,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 5),
                TextApp(
                  context.translate.sortBy,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade800,
                  ),
                ),
              ],
            ),
          ),
        ),
        TextApp(
          ' ${context.translate.results}: $resultCount',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.blue.shade800,
          ),
        ),
      ],
    );
  }
}

class AzizSort extends StatelessWidget {
  final int resultCount;
  final VoidCallback onSortTap;

  const AzizSort({
    Key? key,
    required this.resultCount,
    required this.onSortTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onSortTap,
            borderRadius: BorderRadius.circular(20),
            child: Icon(
              size: 30,
              IconlyLight.filter,
              color: context.color.primaryColor,
            ),

            // SvgPicture.asset(
            //   AppImages.images.core.svg.filter.path,
            //   width: 20,
            //   height: 20,
            // ),
          ),
          TextApp(
            ' ${context.translate.call}: $resultCount',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.blue.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
