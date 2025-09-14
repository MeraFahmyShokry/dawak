import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(
          "Insert Your Medical Insurance Image *",
          style: TextStyle(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.bold),
        ),
        SizedBox(height: 8),
        DottedBorder(
          options: RectDottedBorderOptions(
            color: Colors.grey,
            strokeWidth: 1.5,
          dashPattern: [10, 5],
          ),
          // radius: Radius.circular(8),
          //
          // borderType: BorderType.RRect,
          child: Container(
            height: 150,
            width: double.infinity,
            color: Colors.grey[100],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/demo/png/picimage.png"),
                  SizedBox(height: 8),
                  Text("Drag Your Image Here",
                      style: TextStyle(color: Colors.blue)),
                  TextApp("Max Size 240 * 410",
                      style: TextStyle(
                          fontSize: AppDimensions.fontSizeSmall,
                          color: Colors.grey)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
