import 'package:clean_arc/core/presentation/util/dialogs/custom_vertical_alert_dialog.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
@RoutePage()
class NotificationView extends StatelessWidget {
  static const String path = '/NotificationView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(10),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: LocaleKeys.notifications.tr(),
                actions: [
                  Center(
                    child: InkWell(
                      onTap: () {
                        showVerticalAlertDialog(
                          context: context,
                          title: LocaleKeys.deleteAllNotification.tr(),
                          confirmTxt: LocaleKeys.delete.tr(),
                          confirm: () {
                            NavigationHelper.pop(context);
                          },
                        );
                      },
                      child: TextApp(
                        LocaleKeys.clearAll.tr(),
                        style: context.textStyle.copyWith(
                            fontSize: AppDimensions.fontSizeSmall,
                            fontWeight: FontWeightHelper.regular,
                            color: context.color.secondaryColor),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                    padding: EdgeInsets.all(4),
                    itemBuilder: (context, index) {
                      return NotificationItem();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 8,
                      );
                    },
                    itemCount: 3),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      padding: EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 14),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextApp(
            LocaleKeys.appointmentBookedSuccess.tr()
            ,
            style: context.textStyle.copyWith(
                fontSize: AppDimensions.fontSizeDefault,
                fontWeight: FontWeightHelper.medium,
                color: context.color.titleColor),
          ),
          TextApp(
          LocaleKeys.loremText.tr(),
            style: context.textStyle.copyWith(
                fontSize: AppDimensions.fontSizeSmall,
                fontWeight: FontWeightHelper.regular,
                color: context.color.black),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: TextApp(
              '12 Aug-02:30PM',
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeExtraSmall,
                  fontWeight: FontWeightHelper.regular,
                  color: context.color.gray_A4A7AE),
            ),
          )
        ],
      ),
    );
  }
}
