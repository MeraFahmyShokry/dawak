import 'package:clean_arc/core/data/services/shared_prefs/i_local_preference.dart';
import 'package:clean_arc/core/presentation/widget/customBackButton.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/notification_feature/presentation/views/notification_view.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../core/routing/navigation_helper.dart';

class CustomHomeAppbar extends StatelessWidget {
  final Widget? titleWidget;
  final double? borderRadius;
  final bool? showArrowBack;
  final bool showNotification;
  final Widget? notificationWidget;

  CustomHomeAppbar({
    super.key,
    this.titleWidget,
    this.borderRadius,
    this.showArrowBack,
    this.showNotification = true,
    this.notificationWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showArrowBack != false) CustomBackButton(),
        Expanded(
          child: Row(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: context.color.whiteColor,
                child: AppImages.images.core.svg.personIcon.svg(),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     '${context.translate.welcome} ${getIt<ILocalPreference>().appUser.value?.userName},',
                    style: AppTextTheme.bodySmallSemiBold,
                  ),
                  TextApp(
                    context.translate.haveANiceDay,
                    style: AppTextTheme.bodyXSmall.copyWith(
                      color: AppColors.grey
                    ),
                  ),
                ],
              ),
              Spacer(),
              if (showNotification)
                notificationWidget ?? defaultNotification(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget defaultNotification(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationHelper.push(context, NotificationView());
      },
      child: CircleAvatar(
        backgroundColor: context.color.primaryColor?.withOpacity(.15),
        radius: 23,
        child: Icon(
          IconlyLight.notification,
          color: context.color.primaryColor,
          size: 25,
        ),
      ),
    );
  }
}
