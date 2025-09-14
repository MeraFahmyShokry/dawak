import 'package:auto_route/annotations.dart';
import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_list_view/paginated_list_view_widget.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/book_appointment_feature/controller/book_appointment_controller.dart';
import 'package:clean_arc/features/book_appointment_feature/presentation/views/select_appointment_date_view.dart';
import 'package:clean_arc/features/relevant_patient/controller/get_relevant_patient_controller.dart';
import 'package:clean_arc/features/relevant_patient/domain/model/patient_relevant_patient_model/patient_relevant_patient_model.dart';
import 'package:clean_arc/features/relevant_patient/domain/params/get_relevent_params.dart';
import 'package:clean_arc/features/relevant_patient/presentation/item/patient_card_item.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/data/services/shared_prefs/i_local_preference.dart';
import '../../../../core/presentation/widget/custom_button_button.dart';
import '../../../../core/routing/navigation_helper.dart';
import '../../../book_appointment_feature/presentation/components/book_appointment_progress_bar_component.dart';

//@RoutePage()
class FirstBookAppointmentView extends StatefulWidget {
  final String doctorId;

  const FirstBookAppointmentView({super.key, required this.doctorId});

  static const String path = '/FirstBookAppointmentView';

  @override
  State<FirstBookAppointmentView> createState() =>
      _FirstBookAppointmentViewState();
}

class _FirstBookAppointmentViewState extends State<FirstBookAppointmentView> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: LocaleKeys.bookAppointment.tr(),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<GetPatientCubit>()
              ..getRelevantPatient(context,
                  params: GetRelevantPatientParams(
                      patientId: getIt<ILocalPreference>().appUser.value!.id!)),
          ),
          BlocProvider(
            create: (context) =>
                getIt<BookAppointmentCubit>()..setDoctorId(widget.doctorId),
          ),
        ],
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BookAppointmentProgressBarComponent(
                  progressValueRatio: 0.25,
                ),
              ),
              CustomAppBar(
                title: LocaleKeys.selectpatients.tr(),
                ShowLeading: false,
              ),
              const SizedBox(height: 10),
              Expanded(child: BlocBuilder<GetPatientCubit,
                  PaginatedState<PatientRelevantPatientModel>>(
                builder: (context, state) {
                  return PaginatedListView(
                    successDataKeyEnum: SuccessDataKeyEnum.value,
                    scrollController: _scrollController,
                    onPaginate: (page) {
                      context.read<GetPatientCubit>()
                        ..getRelevantPatient(context,
                            params: GetRelevantPatientParams(
                                patientId: getIt<ILocalPreference>().appUser.value!.id!));
                    },
                    paginatedList: state,
                    itemView: (context, index) {
                      PatientRelevantPatientModel? patient =
                          state.success?.value?[index];
                      return PatientCardItem(
                        isSelected:
                            context.read<BookAppointmentCubit>().patientId ==
                                patient?.id,
                        onTap: () {
                          context.read<BookAppointmentCubit>().patientId =
                              patient?.id;
                          setState(() {});
                        },
                        title: patient?.name,
                        description: patient?.description,
                      );
                    },
                  );
                },
              )),
              //
              //
              //
              //   // SingleChildScrollView(
              //   //   child: Column(
              //   //     children: [
              //   //       const SizedBox(height: 10),
              //   //       // ListView.builder(
              //   //       //   shrinkWrap: true,
              //   //       //   physics: const NeverScrollableScrollPhysics(),
              //   //       //   itemCount: 10,
              //   //       //   itemBuilder: (context, index) => PatientCardItem(title: index==0?'Me':null,),
              //   //       // ),
              //   //       Padding(
              //   //         padding: const EdgeInsets.all(8.0),
              //   //         child: AddNewPatientButtonComponent(
              //   //           onTap: () {},
              //   //         ),
              //   //       ),
              //   //     ],
              //   //   ),
              //   // ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(builder: (context) {
                  return CustomButton(
                    width: double.infinity,
                    title: LocaleKeys.next.tr(),
                    onPressed: () {
                      NavigationHelper.push(
                          context,
                          SelectBookAppointmentDateView(
                            bookAppointmentCubit:
                                context.read<BookAppointmentCubit>(),
                          ));
                    },
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
