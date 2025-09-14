import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/appointment_type_component.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/complaining_question_component.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/custom_complain_text_field_component.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/views/appointment_payment_info_view.dart';
import 'package:clean_arc/features/book_appointment_feature/controller/book_appointment_controller.dart';
import 'package:clean_arc/features/doctor_feature/domain/params/get_doctor_complains_params.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/get_all_doctor_complaints/get_all_doctor_complaints.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/navigation_helper.dart';
import '../components/book_appointment_progress_bar_component.dart';

@RoutePage()
class ThirdBookAppointmentView extends StatefulWidget {
  final BookAppointmentCubit bookAppointmentCubit;

  static const String path = '/ThirdBookAppointmentView';

  const ThirdBookAppointmentView(
      {super.key, required this.bookAppointmentCubit});

  @override
  State<ThirdBookAppointmentView> createState() =>
      _ThirdBookAppointmentViewState();
}

class _ThirdBookAppointmentViewState extends State<ThirdBookAppointmentView> {
  String illss = '';

  @override
  Widget build(BuildContext context) {
    print(widget.bookAppointmentCubit.selectedClinic?.clinicId);
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      appBar: CustomAppBar(
        title: context.translate.bookAppointment,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: widget.bookAppointmentCubit),
          BlocProvider(
            create: (context) => getIt<GetAllDoctorComplaints>()
              ..getAllDoctorComplaints(
                  params: GetAllDoctorComplaintsParams(
                      pageNumber: 1,
                      pageSize: 100,
                      doctorId: widget.bookAppointmentCubit.doctorId)),
          ),
        ],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                BookAppointmentProgressBarComponent(
                  progressValueRatio: 0.75,
                ),
                AppointmentTypeComponent(),
                ComplainingQuestionComponent(
                  values: (c) {
                    illss = c;
                    setState(() {});
                  },
                  bookAppointmentCubit: widget.bookAppointmentCubit,
                ),
                CustomComplainTextFieldComponent(title: illss),
                SizedBox(
                  height: 5,
                ),
                CustomButton(
                  onPressed: () {
                    NavigationHelper.push(
                        context, AppointmentPaymentInfoView());
                  },
                  title: context.translate.pay,
                  width: double.infinity,
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
