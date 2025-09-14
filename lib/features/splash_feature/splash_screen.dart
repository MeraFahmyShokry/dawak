import 'dart:async';

import 'package:clean_arc/core/data/services/shared_prefs/i_local_preference.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/login/login_view.dart';
import 'package:clean_arc/features/layout_feature/view/layout_view.dart';
import 'package:clean_arc/features/splash_feature/presentation/onboarding_screen.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/material.dart';

import '../../core/data/services/shared_prefs/shared_pref.dart';
import '../../core/data/services/shared_prefs/shared_prefs_key.dart';
@RoutePage()
class SplashScreen extends StatefulWidget {
  static const String path = '/SplashScreen';

  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController? animationController;
  Animation<double>? animation;

  Future<Timer> _startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, _navigationPage);
  }

  void _navigationPage() {
    bool skipOnBoarding= getIt<ILocalPreference>().skipIntro??false;

    skipOnBoarding?
    getIt<ILocalPreference>().appUser.value !=null ?
    NavigationHelper.pushReplacementAll(context,LayoutView())
        : NavigationHelper.pushReplacementAll(context,LoginView()):
    NavigationHelper.pushReplacementAll(context,OnBoardingScreen());
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController!, curve: Curves.easeOut);

    animation!.addListener(() => setState(() {}));
    animationController!.forward();

    setState(() {
      _visible = !_visible;
    });
    _startTime();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // AppImages.images.core.logoColumPng.image(
              //     width: animation!.value * 250, height: animation!.value * 250,
              
              // )
            ],
          ),
        ],
      ),
    );
  }
}
