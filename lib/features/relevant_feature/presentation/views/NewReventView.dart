import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/relevant_feature/presentation/items/UploadImageWidget.dart';
import 'package:clean_arc/features/relevant_feature/presentation/views/relevant_medical_history_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class AddNewRelevantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: LocaleKeys.addRelevant.tr()),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person, color: context.color.primaryColor),
                        SizedBox(width: 8),
                        TextApp(
                          LocaleKeys.personalinfo.tr(),
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                        fillColor: context.color.whiteColor,
                        showTitle: true,
                        titleText: LocaleKeys.firstName.tr() +
                            " " +
                            LocaleKeys.lastName.tr(),
                        hintText: LocaleKeys.enterYourName.tr()),
                    SizedBox(height: 10),
                    CustomTextField(
                        fillColor: context.color.whiteColor,
                        showTitle: true,
                        titleText: LocaleKeys.nationalId.tr(),
                        hintText: LocaleKeys.enterNationalId.tr()),
                    SizedBox(height: 10),
                    CustomTextField(
                        fillColor: context.color.whiteColor,
                        showTitle: true,
                        titleText: LocaleKeys.firstName.tr() +
                            " " +
                            LocaleKeys.lastName.tr(),
                        hintText: LocaleKeys.enterYourName.tr()),
                    SizedBox(height: 10),
                    CustomDropdownField(
                        onChanged: (value) {},
                        title: LocaleKeys.gender.tr(),
                        dropDownType: DropDownType.dropDownType,
                        //male
                        items: [LocaleKeys.maleK.tr(), LocaleKeys.femaleK.tr()]),
                    SizedBox(height: 10),
                    CustomTextField(
                      fillColor: context.color.whiteColor,
                      showTitle: true,
                      titleText: LocaleKeys.birthDate.tr(),
                      hintText: LocaleKeys.birthDate.tr(),
                      suffixIcon: Icon(
                        IconlyLight.calendar,
                        color: Colors.blue,
                        size: 24,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomDropdownField(
                        onChanged: (value) {},
                        title: LocaleKeys.gender.tr(),
                        dropDownType: DropDownType.dropDownType,
                        items: ["Male", "Female"]),
                    SizedBox(height: 10),
                    UploadImageWidget(),
                    SizedBox(height: 20),

                  ],
                ),
              ),
            ),


            CustomButton(
                width: double.infinity,
                onPressed: () {
                  print('');
                  NavigationHelper.push(
                      context, RelevantMedicalHistoryView());
                },
                title: LocaleKeys.next.tr()),

            // SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
