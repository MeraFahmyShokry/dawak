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
import '../widget/items/custom_app_bar_location.dart';

import '../../../../core/utils_package/utils_package.dart';
import '../controller/getDoctorsBySpecialist/doctors_by_specialist_cubit.dart';
import '../widget/items/doctor_items.dart';
import '../widget/items/location_item.dart';

//@RoutePage()
class DoctorsByCategoryView extends StatefulWidget {
  final int? specialtyId;

  const DoctorsByCategoryView({super.key, this.specialtyId});

  @override
  State<DoctorsByCategoryView> createState() => _DoctorsByCategoryViewState();
}

class _DoctorsByCategoryViewState extends State<DoctorsByCategoryView> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DoctorsBySpecialistCubit>(
      create: (context) => DoctorsBySpecialistCubit()..init(specialtyId: widget.specialtyId),
      child: Scaffold(
        appBar: CustomAppBarDrawer(scaffoldKey: key,child: LocationItem(),),
        body: BlocBuilder<DoctorsBySpecialistCubit, DoctorsBySpecialistState>(
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
                        TextApp((state.doctors?.data?.length?.toString() ?? '0') +
                            LocaleKeys.results.tr()),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.all(5),
                      separatorBuilder: (context, index) => SizedBox(height: 16),
                      shrinkWrap: true,
                      itemCount: state.doctors?.data?.length ?? 0,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => DoctorItems(
                        doctor: state.doctors?.data?[index],
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
