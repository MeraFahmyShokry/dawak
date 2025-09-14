import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadMedicalInsuranceImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(
          context.translate.insertYourMedicalInsuranceImage,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8.h),
        DottedBorder(
       options: RoundedRectDottedBorderOptions(
         color: Colors.grey,
         strokeWidth: 2,
         dashPattern: [6, 4],
         // borderType: BorderType.RRect,
         radius: Radius.circular(12),

       ),
          child: Container(
            width: double.infinity,
            height: 144.h,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_photo_alternate,
                  color: Colors.blue,
                  size: 40,
                ),
                SizedBox(height: 8),
                TextApp(
                  context.translate.dragYourImageHere,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(height: 4),
                Text(
                  context.translate.maxSize,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
