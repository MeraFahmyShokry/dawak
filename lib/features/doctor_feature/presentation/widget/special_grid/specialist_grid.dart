import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/extintions/widget_extensions.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/cached_network_image_utill.dart';
import 'package:clean_arc/core/presentation/widget/custom_marquee_widget.dart';
import 'package:clean_arc/core/presentation/widget/response_builder.dart';
import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/specialists_model/specialists_model.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/main_doctors/main_doctors_cubit.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/specialists/specialists_cubit.dart';
import 'package:clean_arc/features/doctor_feature/presentation/view/doctors_by_category_view.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view/all_specialists_screen.dart';

class SpecialistGrid extends StatelessWidget {
  const SpecialistGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainDoctorsCubit, MainDoctorsState>(
      builder: (context, state) {
        return Column(
          children: [
            ShowAllWidget(title: LocaleKeys.topSpecialists.tr(), onTap: () {
              NavigationHelper.push(
                context,
                AllSpecialistsScreen(),
              );
            }),
            10.verticalSpace,
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5.w,
                mainAxisSpacing: 5.h,
                childAspectRatio: .90,
              ),
              itemCount: state.specialists?.value?.length??0,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    NavigationHelper.push(
                      context,
                      DoctorsByCategoryView(
                        specialtyId: state.specialists?.value?[index].id,
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomCachedNetworkImage(
                        imageUrl: state.specialists?.value?[index].specialistImageUrl?? '',
                        width: 60.w,
                        height: 60.w,
                      ).cornerRadiusWithClipRRect(100.r),
                      5.verticalSpace,
                      CustomMarquee(
                        child: Text(
                          state.specialists?.value?[index].translationValue
                                  .toString() ??
                              '',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: AppTextTheme.bodyXSmall,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
