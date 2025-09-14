import 'package:clean_arc/core/presentation/util/style/images/fonts.gen.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChooseBirthDateComponent extends StatelessWidget {
  const ChooseBirthDateComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        TextApp(
          '${context.translate.birthDate}',
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium,
              color: context.color.titleColor),
        ),
        DatePickerInputComponent(),
      ],
    );
  }
}

class DatePickerInputComponent extends StatefulWidget {
  @override
  _DatePickerInputComponentState createState() =>
      _DatePickerInputComponentState();
}

class _DatePickerInputComponentState extends State<DatePickerInputComponent> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: context.color.lightGrey2Color!),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextApp(
                _selectedDate == null
                    ? context.translate.chooseBirthDate
                    : DateFormat.yMMMd().format(_selectedDate!),
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeSmall,
                    fontWeight: FontWeightHelper.regular,
                    color: _selectedDate == null
                        ? context.color.grayColor
                        : context.color.lightBlackColor),
              ),
            ),
            AppImages.images.core.svg.calendarPickerIcon.svg(
              width: 17,
              height: 17,
              colorFilter: ColorFilter.mode(
                  context.color.secondaryColor!, BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }
}
