import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/locale_keys.g.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_text_them.dart';

void showModalSingleDatePicker({
  required BuildContext context,
  required Function(DateTime?) onSubmit,
  DateTime? date,
}) {
  DateTime? currentDate =date;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    backgroundColor: AppColors.white,
    builder: (context2) {
      return SingleDatePicker(onSubmit: (date2){
        currentDate =date2;
      }, date: date);
    },
  ).then((value){
    onSubmit(currentDate);
  });
}

class SingleDatePicker extends StatefulWidget {
  const SingleDatePicker({super.key, required this.onSubmit, this.date});

  final Function(DateTime?) onSubmit;
  final DateTime? date;

  @override
  State<SingleDatePicker> createState() => _SingleDatePickerState();
}

class _SingleDatePickerState extends State<SingleDatePicker> {
  DateTime? date;

  @override
  void initState() {
    if (widget.date != null) {
      date = widget.date;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.padAll,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CalendarDatePicker2(
            config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                disableMonthPicker: false,
                weekdayLabels: [
                  LocaleKeys.sun.tr(),
                  LocaleKeys.mon.tr(),
                  LocaleKeys.tue.tr(),
                  LocaleKeys.wed.tr(),
                  LocaleKeys.thu.tr(),
                  LocaleKeys.fri.tr(),
                  LocaleKeys.sat.tr(),
                ],
                controlsTextStyle: AppTextTheme.bodyMediumSemiBold,
                hideNextMonthIcon: true,
                hideLastMonthIcon: true,
                weekdayLabelTextStyle:
                    AppTextTheme.bodySmallSemiBold.copyWith(color: AppColors.darkGrey3),
                firstDate: DateTime(1900),
                selectedDayHighlightColor: AppColors.primary,
                lastDate: DateTime.now()),
            value: [date],
            onValueChanged: (newDate) {
              setState(() {
                date = newDate.firstOrNull;
              });
              widget.onSubmit(newDate.firstOrNull);
            },
          ),
        ],
      ),
    );
  }
}
