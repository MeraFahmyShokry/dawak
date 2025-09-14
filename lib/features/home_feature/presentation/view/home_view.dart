import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/custom_button_button.dart';
import 'package:clean_arc/features/drawer_menu/drawer_menu.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/completet_requirement.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/custom_home_appbar.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/drawer.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/public_Awareness_compnant.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/user_type_componant.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: DrawerMenu(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomHomeAppbar(
                showArrowBack: false,
                notificationWidget: IconButton(
                    onPressed: () {
                      _key.currentState!.openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: context.color.primaryColor,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchComponent(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: CompleteRequirement(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: PublicAwarenessComponent(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    UserTypeComponent(),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
