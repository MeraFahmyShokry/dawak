import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class TestPriceCard extends StatelessWidget {
  final String testName;
  final String inLabPrice;
  final String inHomePrice;

  const TestPriceCard({
    super.key,
    required this.testName,
    required this.inLabPrice,
    required this.inHomePrice,
  });

  @override
  Widget build(BuildContext context) {
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
        height: 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextApp(
                testName,
                style: const TextStyle(
                  fontSize: AppDimensions.fontSizeExtraLarge,
                  fontWeight: FontWeightHelper.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              buildPriceRow(LocaleKeys.inLab.tr(), inLabPrice),
              const SizedBox(height: 8),
              buildPriceRow(LocaleKeys.inHome.tr(), inHomePrice),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPriceRow(String label, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/core/svg/iconlaborhome.svg',
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 6),
            TextApp(
              label,
              style: const TextStyle(
                  fontSize: AppDimensions.fontSizeDefault,
                  fontWeight: FontWeightHelper.medium),
            ),
          ],
        ),
        TextApp(
          price,
          style: const TextStyle(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium),
        ),
      ],
    );
  }
}
