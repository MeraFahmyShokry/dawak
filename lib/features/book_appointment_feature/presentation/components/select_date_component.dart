import 'package:clean_arc/core/presentation/util/date_time_fun.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/book_appointment_feature/controller/book_appointment_controller.dart';
import 'package:clean_arc/features/book_appointment_feature/presentation/components/select_time_component.dart';
import 'package:clean_arc/features/clinic_feature/controller/get_avilavle_time_for_appointments/get_available_time_for_appointments.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/avilable_time_model/avilable_clinic_time.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class SelectDateComponent extends StatefulWidget {
  const SelectDateComponent({
    super.key,
  });

  @override
  State<SelectDateComponent> createState() => _SelectDateComponentState();
}

class _SelectDateComponentState extends State<SelectDateComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        TextApp(
          LocaleKeys.selectdate.tr(),
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium,
              color: context.color.titleColor),
        ),
        CustomDropdownField<AvailableTimeForAppointments>(
          asyncItems: (p0) {
            return getIt<GetCAvailableTimeForAppointments>()
                .getAvailableTimeForAppointments(
              id: "${BookAppointmentCubit.get(context).selectedClinic?.clinicId}",
            );
          },
          // value: BookAppointmentCubit.get(context).selectedClinic,
          filedBuilder: (context, item) => DropDownText(
            title: AppDateTimeFormat.formatDate(
                    date: BookAppointmentCubit.get(context)
                        .selectedDate
                        ?.date
                        .toString(),
                    context: context) ??
                LocaleKeys.selectdate.tr(),
            isSelected: null,
          ),
          itemBuilder: (context, item, isSelected) => DropDownText(
            title: AppDateTimeFormat.formatDate(
                    date: item?.date.toString(), context: context) ??
                '',
            isSelected: isSelected,
          ),
          onChanged: (value) {
            BookAppointmentCubit.get(context).selectedDate = value;
            setState(() {});
          },
          title: LocaleKeys.chooseYourAnswer.tr(),
          dropDownType: DropDownType.dropDownType,
          showTitle: false,
        ),
        SelectTimeComponent()
      ],
    );
  }
}
