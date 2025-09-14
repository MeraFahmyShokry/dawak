import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_list_view/paginated_list_view_widget.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/params/get_doctors_params.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/get_all_doctor/get_all_doctor.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/items/old_doctor_items.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../core/utils_package/utils_package.dart';

@RoutePage()
class DoctorsByCategoryView extends StatelessWidget {
  int? specialtyId;

  DoctorsByCategoryView({super.key, this.specialtyId});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetDoctorsCubit>(
      create: (context) => getIt<GetDoctorsCubit>()
        ..getDoctors(
            params: GetDoctorsParams(
          specialty: specialtyId,
        )),
      child: Scaffold(
        appBar: CustomAppBar(
          title: LocaleKeys.bestDoctors.tr(),
        ),
        body: BlocBuilder<GetDoctorsCubit, PaginatedState<DoctorModel>>(
          builder: (context, state) {
            return SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SearchComponent(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color:
                                    context.color.primaryColor?.withOpacity(.2),
                                borderRadius: BorderRadius.circular(1000)),
                            child: Row(
                              children: [
                                TextApp(
                                  LocaleKeys.sortBy.tr(),
                                  color: context.color.titleColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  IconlyLight.filter2,
                                  color: context.color.primaryColor,
                                )
                              ],
                            )),
                        TextApp((context
                                    .read<GetDoctorsCubit>()
                                    .state
                                    .success
                                    ?.totalCount
                                    ?.toString() ??
                                '0') +
                            LocaleKeys.results.tr()),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: PaginatedListView(
                        successDataKeyEnum: SuccessDataKeyEnum.data,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        scrollController: _scrollController,
                        paginatedList: state,
                        onPaginate: (page) {
                          context.read<GetDoctorsCubit>().getDoctors(
                              params: GetDoctorsParams(
                                  specialty: specialtyId, pageNumber: page));
                        },
                        itemView: (context, index) {
                          DoctorModel? doctor = state.success?.data?[index];
                          return OldDoctorItems(
                            id: doctor?.id ?? '',
                            isAvilable: doctor?.isAvailable,
                            availableTime: doctor?.availableIn,
                            title: doctor?.name,
                            specialist: doctor?.specialistName,
                            rate: doctor?.reviewRating.toString(),
                            distance: doctor?.location,
                            address:
                                (doctor?.address?.street.toString() ?? '') +
                                    ' ' +
                                    (doctor?.address?.city.toString() ?? ''),
                            image: doctor?.doctorImage,
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 16,
                        ), // shrinkWrap: true,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
