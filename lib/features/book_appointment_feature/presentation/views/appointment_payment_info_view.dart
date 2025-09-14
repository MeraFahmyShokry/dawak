import 'package:auto_route/auto_route.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/fonts.gen.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/views/appointment_success_view.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/util/style/images/assets.gen.dart';
import '../../../../core/presentation/widget/custom_button_button.dart';
import '../../../../core/presentation/widget/text_app.dart';
import '../../../../core/routing/navigation_helper.dart';
import '../components/book_appointment_app_bar_component.dart';
import '../components/book_appointment_progress_bar_component.dart';
import '../components/payment_options_component.dart';

//@RoutePage()
class AppointmentPaymentInfoView extends StatelessWidget {
  const AppointmentPaymentInfoView({super.key});

  static const String path = '/AppointmentPaymentInfoView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      appBar: CustomAppBar(
         title: LocaleKeys.paymentinformation.tr(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              BookAppointmentProgressBarComponent(
                progressValueRatio: 1,
              ),
              TextApp(
                LocaleKeys.selectPaymentMethod.tr(),
                style: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeLarge,
                    fontWeight: FontWeightHelper.medium,
                    color: context.color.titleColor),
              ),
              PaymentOptionsComponent(),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {
                  NavigationHelper.push(context, AppointmentSuccessView());
                },
                title: LocaleKeys.next.tr(),
                width: double.infinity,
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
