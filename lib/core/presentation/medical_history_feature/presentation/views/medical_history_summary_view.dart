import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

import '../components/NewReventView.dart';
import '../items/CustomDropdownrevent.dart';

@RoutePage()
class MedicalHistorySummaryView extends StatefulWidget {
  static const String path = '/MedicalHistorySummaryView';
  @override
  _MedicalHistorySummaryViewState createState() =>
      _MedicalHistorySummaryViewState();
}

class _MedicalHistorySummaryViewState extends State<  MedicalHistorySummaryView> {
  List<String> _chronicDiseases = ['hhuui', 'khk', 'yuttf'];
  List<String> _chronicMedications = [];
  List<String> _childhoodIllnesses = [];
  List<String> _familyIllnesses = [];
  List<String> _surgeries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leadingWidget: AppImages.images.core.png.arrowicon.image(
              width: 98, height: 98, color: context.color.secondaryColor),
          onBackPressed: () {
            NavigationHelper.pop(context);
          },
          title:
          context.translate.medicalhistory),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
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
                height: 24,
              ),
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextApp(
                        '${context.translate.chronicDiseases}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      AppImages.images.core.svg.editIcon.svg(
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                            context.color.secondaryColor!, BlendMode.srcIn),
                      ),
                    ],
                  ),
                  _chronicDiseases.isEmpty
                      ? TextApp(
                          '${context.translate.noData}',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.gray_A4A7AE),
                        )
                      : Wrap(
                          spacing: 16,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          runSpacing: 16,
                          children: _chronicDiseases.map<Widget>(
                            (disease) {
                              return MedicalHistorySelectedItem(item: disease);
                            },
                          ).toList(),
                        )
                ],
              ),
              Divider(
                height: 24,
                thickness: 1,
                color: context.color.gray_41465180,
              ),
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextApp(
                        '${context.translate.chronicMedications}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      AppImages.images.core.svg.editIcon.svg(
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                            context.color.secondaryColor!, BlendMode.srcIn),
                      ),
                    ],
                  ),
                  _chronicMedications.isEmpty
                      ? TextApp(
                          '${context.translate.noData}',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.gray_A4A7AE),
                        )
                      : Wrap(
                          spacing: 16,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          runSpacing: 16,
                          children: _chronicMedications.map<Widget>(
                            (medication) {
                              return MedicalHistorySelectedItem(
                                  item: medication);
                            },
                          ).toList(),
                        )
                ],
              ),
              Divider(
                height: 24,
                thickness: 1,
                color: context.color.gray_41465180,
              ),
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextApp(
                        '${context.translate.childhoodIllnesses}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      AppImages.images.core.svg.editIcon.svg(
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                            context.color.secondaryColor!, BlendMode.srcIn),
                      ),
                    ],
                  ),
                  _chronicMedications.isEmpty
                      ? TextApp(
                          '${context.translate.noData}',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.gray_A4A7AE),
                        )
                      : Wrap(
                          spacing: 16,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          runSpacing: 16,
                          children: _childhoodIllnesses.map<Widget>(
                            (illness) {
                              return MedicalHistorySelectedItem(item: illness);
                            },
                          ).toList(),
                        )
                ],
              ),
              Divider(
                height: 24,
                thickness: 1,
                color: context.color.gray_41465180,
              ),
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextApp(
                        '${context.translate.surgeries}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      AppImages.images.core.svg.editIcon.svg(
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                            context.color.secondaryColor!, BlendMode.srcIn),
                      ),
                    ],
                  ),
                  _chronicMedications.isEmpty
                      ? TextApp(
                          '${context.translate.noData}',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.gray_A4A7AE),
                        )
                      : Wrap(
                          spacing: 16,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          runSpacing: 16,
                          children: _surgeries.map<Widget>(
                            (surgery) {
                              return MedicalHistorySelectedItem(item: surgery);
                            },
                          ).toList(),
                        )
                ],
              ),
              Divider(
                height: 24,
                thickness: 1,
                color: context.color.gray_41465180,
              ),
              Column(
                // spacing: ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextApp(
                        '${context.translate.familyIllnesses}',
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeDefault,
                            fontWeight: FontWeightHelper.medium,
                            color: context.color.titleColor),
                      ),
                      AppImages.images.core.svg.editIcon.svg(
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                            context.color.secondaryColor!, BlendMode.srcIn),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  _chronicMedications.isEmpty
                      ? TextApp(
                          '${context.translate.noData}',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.gray_A4A7AE),
                        )
                      : Wrap(
                          spacing: 16,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          runSpacing: 16,
                          children: _familyIllnesses.map<Widget>(
                            (illness) {
                              return MedicalHistorySelectedItem(item: illness);
                            },
                          ).toList(),
                        ),
                  SizedBox(height: 8,),

                ],
              ),
              Divider(
                height: 24,
                thickness: 1,
                color: context.color.gray_41465180,
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
                        TextApp(
                          '85 kg',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 46,
                    child: VerticalDivider(
                      color: context.color.gray_41465180,
                      thickness: 1,
                      width: 25,
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
                        TextApp(
                          'A+',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 24,
                thickness: 1,
                color: context.color.gray_41465180,
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
                        TextApp(
                          '80/120',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 46,
                    child: VerticalDivider(
                      color: context.color.gray_41465180,
                      thickness: 1,
                      width: 25,
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
                        TextApp(
                          '120/60',
                          style: context.textStyle.copyWith(
                              fontSize: AppDimensions.fontSizeSmall,
                              fontWeight: FontWeightHelper.regular,
                              color: context.color.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MedicalHistorySelectedItem extends StatelessWidget {
  const MedicalHistorySelectedItem({
    super.key,
    required this.item,
  });
  final String item;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 5, horizontal: 8),
        decoration: BoxDecoration(
            color: context.color.secondaryColor!.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20)),
        child: TextApp(
          item,
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeSmall,
              fontWeight: FontWeightHelper.regular,
              color: context.color.titleColor),
        ),
      ),
    );
  }
}
