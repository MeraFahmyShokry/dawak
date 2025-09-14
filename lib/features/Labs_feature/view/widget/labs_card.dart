import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Labs_feature/view/labs_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ScanCard extends StatelessWidget {
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
                AppImages.images.demo.png.image9.image(width: 90, height: 92),
              ],
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextApp(
                    'Hayah scan',
                    style: TextStyle(
                      fontSize: AppDimensions.fontSizeLarge,
                      fontWeight: FontWeightHelper.bold,
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
                    title: context.translate.viewdetails,
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
