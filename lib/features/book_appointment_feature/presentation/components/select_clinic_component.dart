import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/book_appointment_feature/controller/book_appointment_controller.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/clinic_model/doctor_model.dart';
import 'package:clean_arc/features/clinic_feature/domain/params/get_clinic_params.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/material.dart';

import '../../../clinic_feature/controller/get_all_clinics/get_all_clinics.dart';

class SelectClinicComponent extends StatefulWidget {
  final String doctorId;

  const SelectClinicComponent({
    super.key,
    required this.doctorId,
  });

  @override
  State<SelectClinicComponent> createState() => _SelectClinicComponentState();
}

class _SelectClinicComponentState extends State<SelectClinicComponent> {
  @override
  Widget build(BuildContext context) {
    BookAppointmentCubit cubit = BookAppointmentCubit.get(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        TextApp(
          context.translate.selectClinic,
          style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.medium,
              color: context.color.titleColor),
        ),
        CustomDropdownField<ClinicModel>(
          asyncItems: (p0) {
            return getIt<GetClinicsCubit>().getClinics(
              params: GetClinicsParams(
                pageNumber: 1,
                doctorId: widget.doctorId,
                pageSize: 10,
              ),
            );
          },
          value: BookAppointmentCubit.get(context).selectedClinic,
          filedBuilder: (context, item) => DropDownText(
            title: item?.title ?? context.translate.selectClinic,
            isSelected: null,
          ),
          itemBuilder: (context, item, isSelected) => DropDownText(
            title: item.title ?? '',
            isSelected: isSelected,
          ),
          onChanged: (value) {
            BookAppointmentCubit.get(context).selectedClinic = value;
            cubit.clearSelectedTime();
            cubit.clearSelectedDate();
          },
          title: context.translate.chooseYourAnswer,
          dropDownType: DropDownType.dropDownType,
          showTitle: false,
        )
      ],
    );
  }
}
