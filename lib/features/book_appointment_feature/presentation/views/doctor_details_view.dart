import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_list_view/paginated_list_view_widget.dart';
import 'package:clean_arc/core/presentation/widget/response_builder.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/components/about_section_component.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/clinic_model/doctor_model.dart';
import 'package:clean_arc/features/clinic_feature/domain/params/get_clinic_params.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_details_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/get_doctor_details/get_doctor_details_cubit.dart';
import 'package:clean_arc/features/relevant_patient/presentation/view/relevant_patient_view.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routing/navigation_helper.dart';
import '../../../clinic_feature/controller/get_all_clinics/get_all_clinics.dart';
import '../components/doctor_header_component.dart';
import '../components/doctor_state_component.dart';
import '../components/review_section_component.dart';
import '../items/clinic_card_item.dart';



@RoutePage()
class DoctorDetailsView extends StatelessWidget {
  String id;
  String name;

  DoctorDetailsView({super.key, required this.id, required this.name});

  static const String path = '/DoctorDetailsView';

  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          getIt<GetDoctorDetailsCubit>()
            ..getDoctorDetailsById(id: id),
        ),
        BlocProvider(
          create: (context) =>
          getIt<GetClinicsCubit>()
            ..getClinics(
                params: GetClinicsParams(
                  doctorId: id,
                )),
        ),
      ],
      child: Scaffold(
        backgroundColor: context.color.whiteColor,
        appBar: CustomAppBar(title: name),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocBuilder<GetDoctorDetailsCubit,
                            BasicState<DoctorDetailsModel>>(
                          builder: (context, state) {
                            return ResponseBuilderWidget<GetDoctorDetailsCubit>(
                              onRetry: () {
                                context.read<GetDoctorDetailsCubit>()
                                  ..getDoctorDetailsById(id: id);
                              },
                              failure: state.isError,
                              isLoading: state.isLoading,
                              childBuilder: () {
                                DoctorDetailsModel? doctor =
                                    state.success?.value;
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DoctorHeaderComponent(
                                      clinicCount:
                                      doctor?.clinicCount.toString() ?? '0',
                                      distance:
                                      doctor?.clinicCount.toString() ?? '0',
                                      doctorName:
                                      doctor?.name.toString() ?? '0',
                                      rating: doctor?.reviewRating.toString() ??
                                          '0',
                                      specialist:
                                      doctor?.specialistName.toString() ??
                                          '0',
                                      imageUrl:
                                      doctor?.imageUrl.toString() ?? '0',
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    DoctorStatsComponent(
                                      experienceCount:
                                      doctor?.experience.toString() ?? '0',
                                      patientCount:
                                      doctor?.patientCount.toString() ??
                                          '0',
                                      ratingCount:
                                      doctor?.reviewCount.toString() ?? '0',
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    AboutSectionComponent(
                                      description:
                                      doctor?.description.toString() ?? '',
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                        BlocBuilder<GetClinicsCubit,
                            PaginatedState<ClinicModel>>(
                          builder: (context, state) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextApp(
                                  context.translate.aboutClinicsAndPrices,
                                  style: context.textStyle.copyWith(
                                      fontSize: AppDimensions.fontSizeDefault,
                                      fontWeight: FontWeightHelper.medium,
                                      color: context.color.titleColor),
                                ),
                                PaginatedListView(
                                  successDataKeyEnum: SuccessDataKeyEnum.data,
                                  scrollController: _scrollController,
                                  onPaginate: (page) {
                                    context.read<GetClinicsCubit>()
                                      ..getClinics(
                                          params: GetClinicsParams(
                                            // doctorId: id,
                                            // pageNumber: page,
                                          ));
                                  },
                                  paginatedList: state,
                                  itemView: (p0, p1) {
                                    ClinicModel? clinic =
                                    state.success?.data?[p1];
                                    return ClinicCardItem(
                                        image: clinic?.imageUrl ?? '',
                                        clinicName: clinic?.title,
                                        clinicAddress: (clinic
                                            ?.address?.street
                                            .toString() ??
                                            '') +
                                            ' ' +
                                            (clinic?.address?.city
                                                .toString() ??
                                                ''),
                                        normalCheckPrice:
                                        clinic?.normalCheckPrice,
                                        argentCheckPrice:
                                        clinic?.argentCheckPrice,
                                        consultationPrice:
                                        clinic?.consultationPrice);
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        ReviewsSectionComponent(),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomButton(
                  onPressed: () {
                    NavigationHelper.push(context, FirstBookAppointmentView(doctorId: id,));
                  },
                  title: context.translate.bookNow,
                  width: double.infinity,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
