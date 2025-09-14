import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/extintions/widget_extensions.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/cached_network_image_utill.dart';
import 'package:clean_arc/core/presentation/widget/response_builder.dart';
import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/specialists_model/specialists_model.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/main_doctors/main_doctors_cubit.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/specialists/specialists_cubit.dart';
import 'package:clean_arc/features/doctor_feature/presentation/view/doctors_by_category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialistGrid extends StatelessWidget {
  const SpecialistGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainDoctorsCubit, MainDoctorsState>(
      builder: (context, state) {
        return Column(
          children: [
            ShowAllWidget(title: context.translate.specialists, onTap: () {}),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 5.h,
                  childAspectRatio: .7,
                ),
                itemCount: state.specialists?.value?.length??0,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // context.pushRoute(DoctorsByCategoryViewRoute());
                      NavigationHelper.push(
                        context,
                        DoctorsByCategoryView(
                          specialtyId: state.specialists?.value?[index].id,
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        // AppImages.images.demo.png.spec1
                        //     .image(width: 60)
                        //     .cornerRadiusWithClipRRect(100)
                        CustomCachedNetworkImage(
                          imageUrl:
                          state.specialists?.value?[index].specialistImageUrl??
                              '',
                          width: 60,
                          height: 60,
                        ).cornerRadiusWithClipRRect(100),
                        SizedBox(height: 5),
                        TextApp(
                          state.specialists?.value?[index].translationValue
                                  .toString() ??
                              '',
                          maxLines: 1,
                          isLoading: false,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
