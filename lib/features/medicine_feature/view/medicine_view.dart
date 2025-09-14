import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/medicine_feature/view/item/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../cubit_cubit/medicine_cubit.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class DailyMedicineScreen extends StatefulWidget {
  const DailyMedicineScreen({super.key});

  @override
  State<DailyMedicineScreen> createState() => _DailyMedicineScreenState();
}

class _DailyMedicineScreenState extends State<DailyMedicineScreen> {
  final List<Widget> durationFields = [];

  Widget buildIncrementalFields() {
    return Column(
      children: [
        IncrementalField(
          label: LocaleKeys.howManyTimes.tr(),
          hint: LocaleKeys.selectTimes.tr(),
          type: IncrementType.times,
        ),
        SizedBox(height: 12.h),
        IncrementalField(
          label: LocaleKeys.dosage.tr(),
          hint: LocaleKeys.selectType.tr(),
          type: IncrementType.dosage,
        ),
        SizedBox(height: 12.h),
        IncrementalField(
          label: LocaleKeys.duration.tr(),
          hint: LocaleKeys.selectDuration.tr(),
          type: IncrementType.duration,
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: CustomDropdownField(
                onChanged: (value) {},
                title: LocaleKeys.reminder.tr(),
                dropDownType: DropDownType.dropDownType,
              ),
            ),
            SizedBox(width: 100.w),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.add,
                      color: context.color.primaryColor, size: 14.sp),
                  SizedBox(width: 8.w),
                  TextApp(
                    LocaleKeys.addTime.tr(),
                    style: TextStyle(
                      fontSize: AppDimensions.fontSizeExtraLarge,
                      color: context.color.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _addDurationField() {
    setState(() {
      durationFields.add(buildIncrementalFields());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MedicineCubit(),
      child: Scaffold(
        appBar: CustomAppBar(title: LocaleKeys.dailyMedicine.tr()),
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDropdownField(
                  onChanged: (value) {},
                  title: LocaleKeys.name.tr(),
                  dropDownType: DropDownType.dropDownType,
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        suffixIcon: Icon(
                          IconlyLight.calendar,
                          size: 24,
                          color: context.color.primaryColor,
                        ),
                        showTitle: true,
                        hintText: LocaleKeys.startDate.tr(),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: CustomTextField(
                        suffixIcon: Icon(
                          IconlyLight.calendar,
                          size: 24,
                          color: context.color.primaryColor,
                        ),
                        showTitle: true,
                        hintText: LocaleKeys.endDate.tr(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                buildIncrementalFields(),
                SizedBox(height: 12.h),
                Column(children: durationFields),
                SizedBox(height: 12.h),
                GestureDetector(
                  onTap: _addDurationField,
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 35,
                          decoration: BoxDecoration(
                            color: context.color.grayColor?.withOpacity(.2),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Icon(Icons.add,
                              color: context.color.primaryColor, size: 24)),
                      SizedBox(width: 8.w),
                      TextApp(
                        LocaleKeys.addAnotherDuration.tr(),
                        style: TextStyle(
                            fontSize: AppDimensions.fontSizeDefault,
                            color: context.color.primaryColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    onPressed: () {

                      Navigator.pop(context);
                    },
                    title: LocaleKeys.save.tr(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
