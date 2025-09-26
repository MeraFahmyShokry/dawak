import 'package:clean_arc/core/app/app_cubit/app_cubit.dart';
import 'package:clean_arc/core/app/connectivity_controller.dart';
import 'package:clean_arc/core/app/env.variable.dart';
import 'package:clean_arc/core/data/constants/constants.dart';
import 'package:clean_arc/core/data/services/shared_prefs/shared_pref.dart';
import 'package:clean_arc/core/data/services/shared_prefs/shared_prefs_key.dart';
import 'package:clean_arc/core/presentation/screen/no_network_screen.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/layout_feature/cubit_cubit/layout_cubit.dart';
import 'package:clean_arc/features/splash_feature/splash_screen.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:month_year_picker/month_year_picker.dart';

class AgzgantyApp extends StatelessWidget {
  // const MyApp.AgzgantyApp({super.key});
  // This component is the root of your application.

  // final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    AppImages.images.core.svg.personIcon.svg();
    AppImages.images.core.png.papperImage.image();
    // SvgPicture.asset('AppImages.images.core.svg.personIcon');
    // AppRouter appRouter=AppRouter();
    return EasyLocalization(
      supportedLocales: [
        Locale(AppStrings.translations.localeAr),
        Locale(AppStrings.translations.localeEN),
      ],
      path: 'assets/translations',
      startLocale: Locale(AppStrings.translations.localeDefault),
      fallbackLocale: Locale(AppStrings.translations.localeDefault),
      useOnlyLangCode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AppCubit>()
              ..changeAppThemeMode(
                sharedMode:
                    SharedPref.getBoolean(PrefKeys.themeMode) ??
                        false,
              )
              ..getSavedLanguage(),
          ),
          BlocProvider(create: (context) => getIt<LoginCubit>()
              ..getCurrentUser()
              ),
          BlocProvider(create: (context) => getIt<LayoutCubit>()),
        ],
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) => ValueListenableBuilder(
            valueListenable: ConnectivityController.instance.isConnected,
            builder: (_, isConnect, __) {
              if (isConnect) {
                return BlocBuilder<AppCubit, AppState>(
                  builder: (BuildContext context, state) {
                    final cubit = context.read<AppCubit>();
                    return ScreenUtilInit(
                      designSize: const Size(375, 812),
                      child: MaterialApp(
                        supportedLocales: [
                          Locale(AppStrings.translations.localeAr),
                          Locale(AppStrings.translations.localeEN),
                        ],
                        localizationsDelegates: context.localizationDelegates,
                        home: SplashScreen(),
                        locale: Locale(cubit.currentLangCode),
                        themeMode: ThemeMode.light,
                        theme: themeLight(),
                        title: 'Agzaganty',
                        debugShowCheckedModeBanner:
                            EnvVariable.instance.isDebugMode,
                        builder: (cnx, widget) {
                          return GestureDetector(
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: Scaffold(
                              body: Builder(
                                builder: (context) {
                                  ConnectivityController.instance.init();
                                  return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0),
                                      child: widget!);
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              } else {
                return MaterialApp(
                  title: 'Flutter Demo',
                  debugShowCheckedModeBanner: EnvVariable.instance.isDebugMode,
                  theme: ThemeData(
                    colorScheme:
                        ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: false,
                  ),
                  home: const NoNetworkScreen(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

// final GoRouter _goRouterConfig = GoRouter(
//   initialLocation: SplashView.path,
//   // initialLocation: ConfirmOtpView.path ,
//   observers: [ObserverUtils.routeObserver],
//   routes: _getRoutes(Routes.I.routes),
// );

// List<GoRoute> _getRoutes(List<RouteInfo>? routes) => (routes ?? [])
//     .map(
//       (subRoute) => GoRoute(
//         path: subRoute.path,
//         name: subRoute.name ?? subRoute.path,
//         builder: (context, state) => subRoute.builder(context, state),
//         routes: _getRoutes(subRoute.routes),
//       ),
//     )
//     .toList();
