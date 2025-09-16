import 'package:clean_arc/core/presentation/extintions/widget_extensions.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/widget/cached_network_image_utill.dart';
import '../../../../core/presentation/widget/custom_marquee_widget.dart';
import '../../../../core/routing/navigation_helper.dart';
import '../../../../core/utils/app_text_them.dart';
import '../../../drawer_menu/drawer_menu.dart';
import '../../../home_feature/presentation/componant/search_componant.dart';
import '../controller/getAllSprcialists/get_all_specialists_cubit.dart';
import '../widget/items/custom_app_bar_location.dart';
import '../widget/items/location_item.dart';
import '../widget/special_grid/specialist_grid.dart';
import 'doctors_by_category_view.dart';

class AllSpecialistsScreen extends StatefulWidget {
  const AllSpecialistsScreen({super.key});

  @override
  State<AllSpecialistsScreen> createState() => _AllSpecialistsScreenState();
}

class _AllSpecialistsScreenState extends State<AllSpecialistsScreen> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetAllSpecialistsCubit()..init(),
      child: BlocBuilder<GetAllSpecialistsCubit, GetAllSpecialistsState>(
        builder: (context, state) {
          return Scaffold(
            key: key,
            drawer: DrawerMenu(),
            appBar: CustomAppBarDrawer(scaffoldKey: key,child: LocationItem(),),
            body: Padding(
              padding: 15.padAll,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SearchComponent(),
                10.verticalSpace,
                Text("ALL Specialists",style: AppTextTheme.bodyMediumSemiBold,),
                10.verticalSpace,
                Expanded(
                  child: SingleChildScrollView(
                    padding: 5.padHorizontal,
                    controller: state.scrollController,
                    child: Column(
                      children: [
                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5.w,
                            mainAxisSpacing: 5.h,
                            childAspectRatio: .7,
                          ),
                          itemCount: state.specialists?.value?.length ?? 0,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                NavigationHelper.push(
                                  context,
                                  DoctorsByCategoryView(
                                    specialtyId: state.specialists
                                        ?.value?[index]
                                        .id,
                                  ),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomCachedNetworkImage(
                                    imageUrl: state.specialists?.value?[index]
                                        .specialistImageUrl ?? '',
                                    width: 60.w,
                                    height: 60.w,
                                  ).cornerRadiusWithClipRRect(100.r),
                                  5.verticalSpace,
                                  Text(
                                    state.specialists?.value?[index]
                                        .translationValue
                                        .toString() ??
                                        '',
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: AppTextTheme.bodyXSmall,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
