import 'package:clean_arc/core/app/app_cubit/app_cubit.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/medical_history_feature/presentation/views/medical_history_summary_view.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/dark_and_lang_button.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/features/Consultation_logs_feature/presentation/ConsultationLogs.dart';
import 'package:clean_arc/features/ContactUs_feature/presentation/Contact_Us.dart';
import 'package:clean_arc/features/FAQ_feature/presentation/FAQ.dart';
import 'package:clean_arc/features/Medical%20insurance_feature/view/Medicalinsurance_view.dart';
import 'package:clean_arc/features/Profile_feature/view/Profile_view.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/login/login_view.dart';
import 'package:clean_arc/features/payment_componant/view/payment_information_view.dart';
import 'package:clean_arc/features/privacyPolicy/presentation/privacy_policy.dart';
import 'package:clean_arc/features/relevant_feature/presentation/views/Addrevent_view.dart';
import 'package:clean_arc/features/prescription_feature/presentation/views/one_prescription_view.dart';
import 'package:clean_arc/features/relevant_feature/presentation/views/relevant_medical_history_view.dart';
import 'package:clean_arc/features/settings_feature/view/item/SettingItem.dart';
import 'package:clean_arc/features/settings_feature/view/widget/SettingSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/routing/navigation_helper.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
 
    return Scaffold(
      appBar: CustomAppBar(title: context.translate.settings),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: const Color.fromARGB(255, 202, 201, 201),
                  child: Icon(Icons.person,
                      size: 45,
                      color: const Color.fromARGB(255, 155, 149, 149)),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp("Mohamed Magdy",
                        style: TextStyle(
                            fontSize: AppDimensions.fontSizeExtraLarge,
                            fontWeight: FontWeight.bold)),
                    TextApp("Mohamed.Magdy@gmail.com",
                        style: TextStyle(
                            fontSize: AppDimensions.fontSizeDefault,
                            color: context.color.grayColor?.withOpacity(0.5))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            SettingSection(
              title: context.translate.acount,
              children: [
                SettingItem(
                    title: context.translate.personalinfo,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalInfoScreen()),
                      );
                    }),
                SettingItem(
                    title: context.translate.medicalInsurance,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MedicalInsuranceScreen()),
                      );
                    }),
                SettingItem(
                    title: context.translate.medicalhistory,
                    onTap: () {
                      NavigationHelper.push(
                          context, RelevantMedicalHistoryView());
                    }),
                SettingItem(
                    title: context.translate.addrelevant,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            // builder: (context) => AddRelevantView()),

                            builder: (context) => AddRelevantScreen()),
                      );
                    }),
                SettingItem(
                    title: context.translate.paymentinformation,
                    onTap: () {
                      NavigationHelper.push(context, PaymentInformationView());
                    }),
                SettingItem(
                    title: context.translate.consultationlogs,
                    onTap: () {
                      NavigationHelper.push(context, ConsultationLogsView());
                    }),
                SettingItem(
                    title: context.translate.prescriptions,
                    onTap: () {
                      NavigationHelper.push(context, OnePrescriptionView());
                    }),
              ],
            ),
            SettingSection(
              title: context.translate.termsandsupport,
              children: [
                SettingItem(
                    title: context.translate.privcyandpolicy,
                    onTap: () {
                      NavigationHelper.push(
                          context,
                          PrivacyPolicyView(
                              title: context.translate.privcyandpolicy));
                    }),
                SettingItem(
                    title: context.translate.faq,
                    onTap: () {
                      NavigationHelper.push(context, FaqScreen());
                    }),
                SettingItem(
                    title: context.translate.contactus,
                    onTap: () {
                      NavigationHelper.push(context, ContactUsScreen());
                    }),
              ],
            ),
            SettingSection(
              title: context.translate.others,
              children: [
                SettingItem(
                  title: context.translate.notifications,
                  trailing: Transform.scale(
                    scale: 1.5,
                    child: Switch.adaptive(
                      value: true,
                      onChanged: (val) {},
                      activeColor: context.color.primaryColor,
                      inactiveTrackColor: context.color.grayColor,
                    ),
                  ),
                ),
                SettingItem(
                    title: context.translate.language,
                    onTap: () {
                      if (context.isEnLocale) {
                        cubit.toArabic();
                      } else {
                        cubit.toEnglish();
                      }
                    }),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
                size: 30,
              ),
              title: TextApp(context.translate.logout,
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeightHelper.medium)),
              onTap: () {

                NavigationHelper.pushReplacementAll(context, LoginView());
              },
            ),
            // DarkAndLangButtons()
          ],
        ),
      ),
    );
  }
}
