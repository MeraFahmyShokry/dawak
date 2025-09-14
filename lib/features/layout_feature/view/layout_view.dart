import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/appointment_feature/presentation/view/appointment_view.dart';
import 'package:clean_arc/features/doctor_feature/presentation/view/doctors_view.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/drawer.dart';
import 'package:clean_arc/features/home_feature/presentation/view/home_view.dart';
import 'package:clean_arc/features/layout_feature/cubit_cubit/layout_cubit.dart';
import 'package:clean_arc/features/medicine_feature/view/DailyTimeMedicineView.dart';
import 'package:clean_arc/features/medicine_feature/view/medicine_view.dart';
import 'package:clean_arc/features/my_orders_feature/presentation/views/my_orders_view.dart';
import 'package:clean_arc/features/settings_feature/view/Setting_view.dart';
import 'package:clean_arc/gitme_websocket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

//@RoutePage()
class LayoutView extends StatefulWidget {
  static const String path = "/LayoutView";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          body: HomeView(),
        );
      },
    );
  }
}
