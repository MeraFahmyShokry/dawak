import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/response_builder.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/items/complaining_item.dart';
import 'package:clean_arc/features/book_appointment_feature/controller/book_appointment_controller.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_complaints_model/doctor_complaints_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/params/get_doctor_complains_params.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/get_all_doctor_complaints/get_all_doctor_complaints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComplainingQuestionComponent extends StatefulWidget {
  final BookAppointmentCubit bookAppointmentCubit;
  Function(String Selected) values;

  ComplainingQuestionComponent({super.key, required this.values, required this.bookAppointmentCubit});

  @override
  State<ComplainingQuestionComponent> createState() =>
      _ComplainingQuestionComponentState();
}

class _ComplainingQuestionComponentState
    extends State<ComplainingQuestionComponent> {
  final List<String> complains = [
    'headache',
    'headache10',
    'headache200',
    'headache3000',
    'headache40',
    'headache5000000',
  ];

  List<int> selectedComplainsIndexes = [];
  List<String> selectedComplainsvalues = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllDoctorComplaints,
        PaginatedState<DoctorComplaintsModel>>(
      builder: (context, state) {
        return ResponseBuilderWidget(
          isLoading: state.isLoading,
          failure: state.isError,
          onRetry: () {
            context.read<GetAllDoctorComplaints>().getAllDoctorComplaints(
                params: GetAllDoctorComplaintsParams(
                    pageNumber: 1,
                    pageSize: 100,
                    doctorId: widget.bookAppointmentCubit.doctorId));
          },
          childBuilder: () {
            // هنا بنستخدم الداتا من الموديل
            final complaintsList = state.success?.value ?? [];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                TextApp(
                  context.translate.whatAreYouComplainingAboutQuestion,
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeDefault,
                      fontWeight: FontWeightHelper.medium,
                      color: context.color.titleColor),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 10,
                  runSpacing: 8,
                  children: complaintsList.asMap().entries.map<Widget>(
                        (complainEntry) {
                      final model = complainEntry.value;
                      final title = model.reason ?? model.doctorName ?? "";

                      return GestureDetector(
                        onTap: () {
                          if (selectedComplainsIndexes
                              .contains(complainEntry.key)) {
                            selectedComplainsIndexes.remove(complainEntry.key);
                            selectedComplainsvalues.remove(title);
                          } else {
                            selectedComplainsIndexes.add(complainEntry.key);
                            selectedComplainsvalues.add(title);
                          }

                          widget.values(selectedComplainsvalues.join(' , '));
                          setState(() {});
                        },
                        child: ComplainingItem(
                          title: title,
                          isSelected: selectedComplainsIndexes
                              .contains(complainEntry.key),
                        ),
                      );
                    },
                  ).toList(),
                )
              ],
            );
          },
        );
      },
    );
  }
}
