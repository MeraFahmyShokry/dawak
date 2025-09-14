import 'package:clean_arc/core/presentation/util/style/images/fonts.gen.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class AppointmentTypeComponent extends StatelessWidget {
  const AppointmentTypeComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        TextApp(
          context.translate.appointmentType,
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium,
              color: context.color.titleColor),
        ),
        CustomDropdownField<String>(
          onChanged: (value) {},
          title: context.translate.chooseYourAnswer,
          dropDownType: DropDownType.dropDownType,
          showTitle: false,
        )
      ],
    );
  }
}