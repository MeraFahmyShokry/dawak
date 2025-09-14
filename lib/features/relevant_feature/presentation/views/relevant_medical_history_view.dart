import 'dart:io';

import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/home_feature/presentation/view/home_view.dart';
import 'package:clean_arc/features/relevant_feature/presentation/components/choose_birth_date_component.dart';
import 'package:clean_arc/features/relevant_feature/presentation/views/Addrevent_view.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../components/NewReventView.dart';
import '../items/CustomDropdownrevent.dart';

//@RoutePage()
class RelevantMedicalHistoryView extends StatefulWidget {
  static const String path = '/RelevantMedicalHistoryView';

  @override
  _RelevantMedicalHistoryViewState createState() =>
      _RelevantMedicalHistoryViewState();
}

class _RelevantMedicalHistoryViewState
    extends State<RelevantMedicalHistoryView> {
  File? _pickedInsuranceImage;
  List<String> _chronicDiseases = [];
  List<String> _basicChronicDiseases = [
    'sadssad',
    'sasda',
    'dfs',
    'sdf',
    'fsddfs',
    'fdsdf'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title:
          context.translate.addRelevant),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24,
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                spacing: 16,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      AppImages.images.core.png.medicalHistoryIcon.image(
                        width: 24,
                        height: 24,
                      ),
                      TextApp(
                        '${context.translate.medicalhistory}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeExtraLarge,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextApp(
                        '${context.translate.chronicDiseases}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      CustomDropdownField(
                        onChanged: (value) {
                          _chronicDiseases.add(value.toString());
                          setState(() {});
                        },
                        title: context.translate.chooseDisease,
                        items: _basicChronicDiseases,
                        showTitle: false,
                        titleStyle: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.gray_A4A7AE),
                        dropDownType: DropDownType.dropDownType,
                      ),
                      Wrap(
                        spacing: 16,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        runSpacing: 16,
                        children: _chronicDiseases.map<Widget>(
                          (disease) {
                            return ChronicDiseasesSelectedItem(
                              disease: disease,
                              onRemove: () {
                                _chronicDiseases.remove(disease);
                                setState(() {});
                              },
                            );
                          },
                        ).toList(),
                      )
                    ],
                  ),
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextApp(
                        '${context.translate.chronicMedications}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      CustomDropdownField(
                        onChanged: (value) {},
                        title: context.translate.chooseMedication,
                        showTitle: false,
                        titleStyle: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.gray_A4A7AE),
                        dropDownType: DropDownType.dropDownType,
                      ),
                    ],
                  ),
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextApp(
                        '${context.translate.childhoodIllnesses}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      CustomDropdownField(
                        onChanged: (value) {},
                        title: context.translate.chooseYourAnswer,
                        showTitle: false,
                        titleStyle: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.gray_A4A7AE),
                        dropDownType: DropDownType.dropDownType,
                      ),
                    ],
                  ),
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextApp(
                        '${context.translate.surgeries}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      CustomDropdownField(
                        onChanged: (value) {},
                        title: context.translate.chooseYourPastSurgeries,
                        showTitle: false,
                        titleStyle: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.gray_A4A7AE),
                        dropDownType: DropDownType.dropDownType,
                      ),
                    ],
                  ),
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextApp(
                        '${context.translate.familyIllnesses}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      CustomDropdownField(
                        onChanged: (value) {},
                        title: context.translate.chooseYourAnswer,
                        showTitle: false,
                        titleStyle: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.gray_A4A7AE),
                        dropDownType: DropDownType.dropDownType,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextApp(
                              '${context.translate.weight}',
                              style: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeDefault,
                                  fontWeight: FontWeightHelper.medium,
                                  color: context.color.titleColor),
                            ),
                            CustomTextField(
                              hintText: '${context.translate.enterYourWeight}',
                              hintStyle: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeSmall,
                                  fontWeight: FontWeightHelper.regular,
                                  color: context.color.gray_A4A7AE),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextApp(
                              '${context.translate.bloodType}',
                              style: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeDefault,
                                  fontWeight: FontWeightHelper.medium,
                                  color: context.color.titleColor),
                            ),
                            CustomDropdownField(
                              onChanged: (value) {},
                              title: context.translate.selectType,
                              showTitle: false,
                              titleStyle: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeSmall,
                                  fontWeight: FontWeightHelper.regular,
                                  color: context.color.gray_A4A7AE),
                              dropDownType: DropDownType.dropDownType,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextApp(
                              '${context.translate.bloodPressure}',
                              style: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeDefault,
                                  fontWeight: FontWeightHelper.medium,
                                  color: context.color.titleColor),
                            ),
                            CustomTextField(
                              hintText: '---/---',
                              hintStyle: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeSmall,
                                  fontWeight: FontWeightHelper.regular,
                                  color: context.color.gray_A4A7AE),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextApp(
                              '${context.translate.heartRate}',
                              style: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeDefault,
                                  fontWeight: FontWeightHelper.medium,
                                  color: context.color.titleColor),
                            ),
                            CustomTextField(
                              hintText: '---/---',
                              hintStyle: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeSmall,
                                  fontWeight: FontWeightHelper.regular,
                                  color: context.color.gray_A4A7AE),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
            CustomButton(
                width: double.infinity,
                onPressed: () {
                  NavigationHelper.pushReplacementAll(context, HomeView());
                  // NavigationHelper.push(context, AddRelevantScreen());
                },
                title: context.translate.save),
          ],
        ),
      ),
    );
  }
}

class ChronicDiseasesSelectedItem extends StatelessWidget {
  const ChronicDiseasesSelectedItem(
      {super.key, required this.disease, this.onRemove});

  final String disease;
  final GestureTapCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 5, horizontal: 8),
        decoration: BoxDecoration(
            color: context.color.secondaryColor!.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          spacing: 10,
          children: [
            TextApp(
              disease,
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeSmall,
                  fontWeight: FontWeightHelper.regular,
                  color: context.color.titleColor),
            ),
            GestureDetector(
              onTap: onRemove,
              child: Icon(
                Icons.clear,
                color: context.color.secondaryColor,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
 }
