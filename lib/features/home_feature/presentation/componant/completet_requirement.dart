import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/relevant_feature/presentation/views/relevant_medical_history_view.dart';
import 'package:flutter/material.dart';

class CompleteRequirement extends StatelessWidget {
  const CompleteRequirement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 104,
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            decoration: BoxDecoration(
                color: Color(0xfffffaeb),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        AppImages.images.core.svg.warrnign.svg(),
                        TextApp(
                          context.translate.pleaseCompleteYourMedicalHistory,
                          fontSize: AppDimensions.fontSizeLarge,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      height: 40,
                      width: 250,
                      onPressed: () {
                        NavigationHelper.push(context, RelevantMedicalHistoryView());
                      },
                      titleFontSize: 16,
                      title: context.translate.goToSetting,
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right   : context.isEnLocale?0:null,
          left       : context.isEnLocale?null:0,
            child: AppImages.images.core.png.papperImage.image(height: 113),
          )
        ],
      ),
    );
  }
}
