import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/medicine_feature/cubit_cubit/medicine_cubit.dart';
import 'package:clean_arc/features/medicine_feature/view/widget/CounterWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
enum IncrementType { dosage, duration, times }

enum decrementType { dosage, duration, times }

class IncrementalField extends StatelessWidget {
  final String label;
  final String hint;
  final IncrementType type;

  const IncrementalField(
      {super.key, required this.label, required this.hint, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(label,
            style: TextStyle(
                fontSize: AppDimensions.fontSizeDefault,
                fontWeight: FontWeightHelper.bold)),
        Row(
          children: [
            Expanded(
              child: CustomDropdownField(
                onChanged: (value) {},
                title: LocaleKeys.selectDuration.tr(),
                showTitle: false,
                dropDownType: DropDownType.dropDownType,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: BlocBuilder<MedicineCubit, MedicineState>(
                builder: (context, state) {
                  final cubit = context.read<MedicineCubit>();
                  int value = (type == IncrementType.dosage)
                      ? state.dosage
                      : (type == IncrementType.duration)
                          ? state.duration
                          : state.times;

                  return CounterWidget(type: IncrementType.times);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
