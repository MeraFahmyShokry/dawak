import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/special_grid/specialist_grid.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/top_doctors/top_doctors.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../drawer_menu/drawer_menu.dart';
import '../controller/main_doctors/main_doctors_cubit.dart';

class DoctorsView extends StatefulWidget {
  const DoctorsView({super.key});

  @override
  State<DoctorsView> createState() => _DoctorsViewState();
}

class _DoctorsViewState extends State<DoctorsView> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) => MainDoctorsCubit()..init(),
        // providers: [
        //   BlocProvider<SpecialistsCubit>(
        //     create: (context) => getIt<SpecialistsCubit>(),
        //   ),
        //   BlocProvider<DoctorReviewsCubit>(
        //     create: (context) => getIt<DoctorReviewsCubit>(),
        //   ),
        // ],
        child: BlocBuilder<MainDoctorsCubit, MainDoctorsState>(
          builder: (context, state) {
            return state.status is Loading?
            SizedBox():
            Scaffold(
              key: key,
              drawer: DrawerMenu(),
              appBar: CustomAppBarLocation(scaffoldKey: key),
              body: Padding(
                padding: 15.padHorizontal + 15.padTop,
                child: Column(
                  children: [
                    SearchComponent(),
                    15.verticalSpace,
                    Expanded(
                      child: SingleChildScrollView(
                        padding: 5.padHorizontal,
                        child: Column(
                          children: [
                            SpecialistGrid(),
                            TopDoctors()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      );
  }
}

class CustomAppBarLocation extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarLocation({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          OnTap(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: 5.padRight + 5.padVertical,
              child: AppImages.images.core.svg.arrowBack.svg(
                  width: 25.w, height: 25.w),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(20.r)
            ),
            padding: 12.padHorizontal + 7.padVertical,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppImages.images.core.svg.locationIcon.svg(
                    colorFilter: ColorFilter.mode(
                        AppColors.primary, BlendMode.srcIn),
                    width: 22.w, height: 22.w),
                5.horizontalSpace,
                Text(
                  "Maadi, Cairo",
                  style: AppTextTheme.bodySmall.copyWith(
                    color: AppColors.primary
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      actions: [
        OnTap(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: 15.padHorizontal,
            child: Icon(
              Icons.menu,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
