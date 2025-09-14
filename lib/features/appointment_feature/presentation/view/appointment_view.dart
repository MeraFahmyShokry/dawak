import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/CustomTab_Bar.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/features/appointment_feature/presentation/componant/All.dart';
import 'package:clean_arc/features/appointment_feature/presentation/componant/Cancelled.dart';
import 'package:clean_arc/features/appointment_feature/presentation/componant/Completed.dart';
import 'package:clean_arc/features/appointment_feature/presentation/componant/upcoming.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppointmentView extends StatefulWidget {
  const AppointmentView({super.key});

  @override
  _AppointmentViewState createState() => _AppointmentViewState();
}

class _AppointmentViewState extends State<AppointmentView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // NavigationHelper.
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
                CustomAppBar(title: LocaleKeys.appointment.tr()),
              const SizedBox(height: 10),
              CustomTabBar(tabController: _tabController),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    AllWidget(),
                    UpcomingWidget(),
                    CompletedgWidget(),
                    CancelledWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
