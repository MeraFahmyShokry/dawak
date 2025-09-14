import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/views/third_book_appointment_view.dart';
import 'package:clean_arc/features/book_appointment_feature/controller/book_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../components/book_appointment_progress_bar_component.dart';
import '../components/select_clinic_component.dart';
import '../components/select_date_component.dart';

//@RoutePage()
class SelectBookAppointmentDateView extends StatelessWidget {
  BookAppointmentCubit bookAppointmentCubit;

  SelectBookAppointmentDateView(
      {super.key, required this.bookAppointmentCubit});

  static const String path = '/SecondBookAppointmentView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      appBar: CustomAppBar(title: LocaleKeys.bookAppointment.tr()),
      body: MultiBlocProvider(
        providers: [BlocProvider.value(value: bookAppointmentCubit)],
        child: BlocBuilder(
          bloc: bookAppointmentCubit,
          builder:(context, state) =>  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  BookAppointmentProgressBarComponent(
                    progressValueRatio: 0.5,
                  ),
                  SelectClinicComponent(doctorId: bookAppointmentCubit.doctorId,),
                  SelectDateComponent(),
                  SizedBox(
                    height: 8,
                  ),
                  CustomButton(
                    onPressed: () {
                      NavigationHelper.push(
                          context,
                          ThirdBookAppointmentView(
                            bookAppointmentCubit: bookAppointmentCubit,
                          ));
                    },
                    title: LocaleKeys.next.tr(),
                    width: double.infinity,
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
