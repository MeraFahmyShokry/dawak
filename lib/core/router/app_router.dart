// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../features/splash_feature/presentation/onboarding_screen.dart';
// import '../../features/splash_feature/splash_screen.dart';
// part 'app_router.gr.dart';
//
// @singleton
// @AutoRouterConfig(replaceInRouteName: 'Screen,Route')
// class AppRouter extends RootStackRouter {
//
//   @override
//   RouteType get defaultRouteType => const RouteType.adaptive();
//
//   @override
//   List<AutoRoute> get routes => [
//     AutoRoute(
//       page: SplashRoute.page,
//       initial: true,
//       type: RouteType.custom(
//         transitionsBuilder: (context, animation, _, child) =>
//             FadeTransition(opacity: animation, child: child),
//       ),
//     ),
//
//     AutoRoute(page: OnBoardingRoute.page),
//
//   ];
// }
//
