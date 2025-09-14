import 'package:clean_arc/core/data/services/shared_prefs/shared_pref.dart';
import 'package:clean_arc/core/data/services/shared_prefs/shared_prefs_key.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/login/login_view.dart';
import 'package:clean_arc/features/splash_feature/domain/entity/onboarding_entity.dart';
import 'package:clean_arc/features/splash_feature/presentation/componant/dots.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../core/data/services/shared_prefs/i_local_preference.dart';
import '../../../injection/injection.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  static const String path = '/OnBoardingScreen';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController controller;
  int currentPage = 0;

  List<OnBoardingEntity> onBoardingList = [];

  @override
  void initState() {
    controller = PageController();

    Future.delayed(Duration.zero, () {
      onBoardingList = [
        OnBoardingEntity(
            title: LocaleKeys.onboardingTitle1.tr(),
            description: LocaleKeys.onboardingDescription1.tr(),
            image: AppImages.images.core.png.onboarding1.path),
        OnBoardingEntity(
            title: LocaleKeys.onboardingTitle2.tr(),
            description: LocaleKeys.onboardingDescription2.tr(),
            image: AppImages.images.core.png.onboarding2.path),
        OnBoardingEntity(
            title: LocaleKeys.onboardingTitle3.tr(),
            description: LocaleKeys.onboardingDescription3.tr(),
            image: AppImages.images.core.png.onboarding3.path),
        OnBoardingEntity(
            title: LocaleKeys.onboardingTitle4.tr(),
            description: LocaleKeys.onboardingDescription4.tr(),
            image: AppImages.images.core.png.onboarding4.path),
        OnBoardingEntity(
            title: LocaleKeys.onboardingTitle5.tr(),
            description: LocaleKeys.onboardingDescription5.tr(),
            image: AppImages.images.core.png.onboarding5.path),
      ];
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: 15.padAll,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomButton(
                bgColor: Colors.transparent,
                width: AppDimensions.fontSizeExtraLarge40,
                onPressed: () {
                  getIt<ILocalPreference>().skipIntro=true;
                  NavigationHelper.pushReplacementAll(
                      context, LoginView());
                },
                child: Text(
                  LocaleKeys.skip.tr(),
                  style: AppTextTheme.bodySmall,
                ),
              ),
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: controller,
                  onPageChanged: (value) => setState(() => currentPage = value),
                  itemCount: onBoardingList.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        40.verticalSpace,
                        Image.asset(
                          onBoardingList[i].image,
                          width: context.width,
                          // height: context.height / 3,
                        ),
                        20.verticalSpace,
                        Padding(
                          padding: 15.padHorizontal,
                          child: Column(
                            children: [
                              Text(
                                onBoardingList[i].title,
                                textAlign: TextAlign.center,
                                style: AppTextTheme.bodyLargeSemiBold.copyWith(
                                    color: AppColors.primary
                                ),
                              ),
                              10.verticalSpace,
                              Text(
                                onBoardingList[i].description,
                                style: AppTextTheme.bodySmall,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onBoardingList.length,
                      (int index) => BulidDots(
                    index: index,
                    currentPage: currentPage,
                  ),
                ),
              ),
              (context.height/15).verticalSpace,
              CustomButton(
                width: double.infinity,
                onPressed: () {
                  if (currentPage + 1 == onBoardingList.length) {
                    getIt<ILocalPreference>().skipIntro=true;
                    NavigationHelper.pushReplacementAll(
                        context, LoginView());
                  } else {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: Text(
                  (currentPage + 1 == onBoardingList.length)
                      ? LocaleKeys.start.tr()
                      : LocaleKeys.next.tr(),
                  style: context.textStyleButton,
                ),
              ),
            ],
          ),
        ));
  }
}
