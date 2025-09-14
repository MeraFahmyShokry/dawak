import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.translate.faq),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SearchComponent(
              hint: context.translate.searchForDoctorsNursesLabs,
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CustomContainerCard(
                    child: ExpansionTile(
                      tilePadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      childrenPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                      title: Row(
                        children: [
                          TextApp("• ",
                              style: TextStyle(
                                  fontSize: AppDimensions.fontSizeDefault,
                                  color: context.color.textColor)),
                          Expanded(
                            child: TextApp(
                              context.translate.contactwithdoc,
                              style: TextStyle(
                                  fontWeight: FontWeightHelper.medium,
                                  fontSize: AppDimensions.fontSizeLarge,
                                  color: context.color.titleColor),
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextApp(
                              context.translate.answer + ":",
                              style: TextStyle(
                                fontSize: AppDimensions.fontSizeDefault,
                                color: context.color.primaryColor,
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextApp(
                                context.translate.ans,
                                style: TextStyle(
                                  fontSize: AppDimensions.fontSizeDefault,
                                  color: context.color.titleColor,
                                ),
                                maxLines: 2,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
