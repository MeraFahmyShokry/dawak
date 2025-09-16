import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/items/location_item.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/special_grid/specialist_grid.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/top_doctors/top_doctors.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../drawer_menu/drawer_menu.dart';
import '../controller/main_doctors/main_doctors_cubit.dart';
import '../widget/items/custom_app_bar_location.dart';

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
        child: BlocBuilder<MainDoctorsCubit, MainDoctorsState>(
          builder: (context, state) {
            return state.status is Loading?
            CircularProgressIndicator(color:  AppColors.primary,):
            Scaffold(
              key: key,
              drawer: DrawerMenu(),
              appBar: CustomAppBarDrawer(scaffoldKey: key,child: LocationItem(),),
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


