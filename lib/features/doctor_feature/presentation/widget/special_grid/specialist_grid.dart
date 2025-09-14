import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/extintions/widget_extensions.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/cached_network_image_utill.dart';
import 'package:clean_arc/core/presentation/widget/response_builder.dart';
import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/specialists_model/specialists_model.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/specialists/specialists_cubit.dart';
import 'package:clean_arc/features/doctor_feature/presentation/view/doctors_by_category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialistGrid extends StatefulWidget {
  const SpecialistGrid({super.key});

  @override
  State<SpecialistGrid> createState() => _SpecialistGridState();
}

class _SpecialistGridState extends State<SpecialistGrid> {
  @override
  void initState() {
    context.read<SpecialistsCubit>().specialists();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SpecialistsCubit specialistsCubit = context.watch<SpecialistsCubit>();
    return Column(
      children: [
        ShowAllWidget(
          title: LocaleKeys.specialists.tr(),
          onTap: () {},
        ),
        SizedBox(
          height: 10,
        ),
        ResponseBuilderWidget<PaginatedList<SpecialistsModel>>(
            onRetry: () {
              specialistsCubit.specialists();
            },
            isLoading: specialistsCubit.state.isLoading,
            failure: specialistsCubit.state.isError,

            // state: specialistsCubit.state,
            childBuilder: () {
              PaginatedState<SpecialistsModel> state = specialistsCubit.state;
              return GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 5.h,
                  childAspectRatio: .7,
                ),
                itemCount: specialistsCubit.state.isLoading ?? false
                    ? 8
                    : state.success?.value?.length ?? 0,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // context.pushRoute(DoctorsByCategoryViewRoute());
                      NavigationHelper.push(
                          context,
                          DoctorsByCategoryView(
                            specialtyId: state.success?.value?[index].id,
                          ));
                    },
                    child: Column(
                      children: [
                        // AppImages.images.demo.png.spec1
                        //     .image(width: 60)
                        //     .cornerRadiusWithClipRRect(100)
                        CustomCachedNetworkImage(
                          imageUrl:
                              state.success?.value?[index].specialistImageUrl ??
                                  '',
                          width: 60,
                          height: 60,
                        ).cornerRadiusWithClipRRect(100),
                        SizedBox(
                          height: 5,
                        ),
                        TextApp(
                          state.success?.value?[index].translationValue
                                  .toString() ??
                              '',
                          maxLines: 1,
                          isLoading: state.isLoading ?? false,
                        )
                      ],
                    ),
                  );
                },
              );
            }),
      ],
    );
  }
}
