import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class UploadImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(
       LocaleKeys.insertYourMedicalInsuranceImage.tr(),

          // "Insert Your Medical Insurance Image *",
          style: TextStyle(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.bold),
        ),
        SizedBox(height: 8),
        DottedBorder(
     options: RoundedRectDottedBorderOptions(
       color: Colors.grey,
       strokeWidth: 1.5,
       dashPattern: [10, 5],
       // borderType: BorderType.RRect,
       radius: Radius.circular(8),
     ),
          child: Container(
            height: 150,
            width: double.infinity,
            color:context.color.fillColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/demo/png/picimage.png"),
                  SizedBox(height: 8),
                  Text(LocaleKeys.dragYourImageHere.tr(),
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
