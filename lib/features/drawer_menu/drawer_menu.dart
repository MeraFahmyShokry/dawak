import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Cart_feature/view/Caer_view.dart';
import 'package:clean_arc/features/appointment_feature/presentation/view/appointment_view.dart';
import 'package:clean_arc/features/drawer_menu/component/drawer_item.dart';
import 'package:clean_arc/features/home_feature/presentation/view/home_view.dart';
import 'package:clean_arc/features/medicine_feature/view/medicine_view.dart';
import 'package:clean_arc/features/my_orders_feature/presentation/views/my_orders_view.dart';
import 'package:clean_arc/features/notification_feature/presentation/views/notification_view.dart';
import 'package:clean_arc/features/settings_feature/view/Setting_view.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Drawer(
        child: SafeArea(
          child: Padding(
            padding: 20.padHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.translate.mainMenu,
                  style: AppTextTheme.headingMedium
                      .copyWith(color: AppColors.primary),
                ),
                5.verticalSpace,
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DrawerItem(
                        title: context.translate.home,
                        onTap: () {
                          NavigationHelper.pushReplacementAll(
                              context, HomeView());
                        },
                      ),
                      DrawerItem(
                        title: context.translate.notifications,
                        onTap: () {
                          NavigationHelper.push(context, NotificationView());
                        },
                      ),
                      DrawerItem(
                        title: context.translate.dailyMedicine,
                        onTap: () {
                          NavigationHelper.push(context, DailyMedicineScreen());
                        },
                      ),
                      DrawerItem(
                        title: context.translate.myOrders,
                        onTap: () {
                          NavigationHelper.push(context, MyOrdersView());
                        },
                      ),
                      DrawerItem(
                        title: context.translate.appointment,
                        onTap: () {
                          NavigationHelper.push(context, AppointmentView());
                        },
                      ),
                      DrawerItem(
                        title: context.translate.cart,
                        onTap: () {
                          NavigationHelper.push(context, CartScreen());
                        },
                      ),
                      DrawerItem(
                        title: context.translate.settings,
                        onTap: () {
                          NavigationHelper.push(context, SettingScreen());
                        },
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
