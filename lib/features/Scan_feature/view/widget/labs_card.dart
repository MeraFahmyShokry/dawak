import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Labs_feature/view/labs_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class LabCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              children: [
                SvgPicture.asset(
                  'assets/images/core/svg/filter.svg',
                  // AppImages.images.core.png.elmokhtaber.path,

                  width: 80,
                  height: 92,
                  color: context.color.titleColor,
                ),
              ],
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextApp(
                    'معمل المختبر',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(IconlyBold.star, color: Color(0xffFCD53F)),
                          TextApp(
                            "4.7",
                            fontWeight: FontWeightHelper.bold,
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      Row(
                        children: [
                          const Icon(IconlyLight.location,
                              color: Color(0xffD53B36)),
                          TextApp(
                            "3.5 KM",
                            fontWeight: FontWeightHelper.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  CustomButton(
                    width: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LabDetailsScreen()),
                      );
                    },
                    title: LocaleKeys.viewdetails.tr(),
                    titleFontSize: AppDimensions.fontSizeDefault,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
