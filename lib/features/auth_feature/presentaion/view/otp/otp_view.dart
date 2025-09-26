import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/screen_utils.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/home_feature/presentation/view/home_view.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/presentation/widget/on_tap.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_them.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key, required this.callBack, required this.phoneNumber});
final Function() callBack;
final String phoneNumber;
  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> with ScreenUtils {

  // void _verifyOtp() {
  //   if (currentOtp.length == 4) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => SucsessOtpView()),
  //     );
  //     // ScaffoldMessenger.of(context).showSnackBar(
  //     //   SnackBar(
  //     //     content: Text(LocaleKeys.verificationSuccess.tr()),
  //     //     backgroundColor: Colors.green,
  //     //   ),
  //     // );
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(LocaleKeys.invalidOtp.tr()),
  //         backgroundColor: Colors.red,
  //       ),
  //     );
  //   }
  // }

  // void _resendCode() {
  //   setState(() {
  //     isResendDisabled = true;
  //   });
  //
  //   Future.delayed(Duration(seconds: 5), () {
  //     setState(() {
  //       isResendDisabled = false;
  //     });
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(LocaleKeys.codeResent.tr()),
  //         backgroundColor: Colors.blue,
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      body: Padding(
        padding: 16.padHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            38.verticalSpace,
            OnTap(
              onTap: (){
               Navigator.pop(context);
              },
              child: Row(
                children: [
                 AppImages.images.core.svg.arrowBack.svg(),
                  8.horizontalSpace,
                  Text(
                    LocaleKeys.verifyAccount.tr(),
                    style: AppTextTheme.bodyLargeSemiBold.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            16.verticalSpace,
            TextApp(
              "Check your SMS on ${widget.phoneNumber} ${LocaleKeys.forVerificationCode.tr()}",
              textAlign: TextAlign.center,
              style: AppTextTheme.bodySmall,
            ),
            Padding(
              padding: 20.padVertical+40.padHorizontal,
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50.h,
                  fieldWidth: 50.w,
                  inactiveColor: Colors.grey.shade300,
                  activeColor: AppColors.primary,
                  selectedColor: AppColors.primary,
                ),
                animationDuration: Duration(milliseconds: 300),
                onChanged: (value) {
                },
                onCompleted: (value) {

                },
              ),
            ),
            RichText(
              text: TextSpan(
                text: LocaleKeys.didNotReceiveCode.tr(),
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
                children: [
                  WidgetSpan(
                    child: GestureDetector(
                      // onTap: isResendDisabled ? null : _resendCode,
                      child: TextApp(
                        LocaleKeys.resendCode.tr(),
                        style: TextStyle(
                          // color: isResendDisabled ? Colors.grey : Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            CustomButton(
                width: double.infinity,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SucsessOtpView()),
                  );
                },
                child: TextApp(
                  LocaleKeys.confirmVerificationCode.tr(),
                  style: context.textStyleButton,
                )),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////
//@RoutePage()
class SucsessOtpView extends StatefulWidget {
  const SucsessOtpView({super.key});

  static const path = '/SucsessOtpView';

  @override
  State<SucsessOtpView> createState() => _SucsessOtpViewState();
}

class _SucsessOtpViewState extends State<SucsessOtpView> with ScreenUtils {
  final String email = "abdulaziz...@gmail.com";
  String currentOtp = "";
  bool isResendDisabled = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextApp(
              LocaleKeys.verificationDone.tr(),
            ),
            SizedBox(height: 10.h),
            TextApp(
              LocaleKeys.welcomeToCommunity.tr(),
            ),

            SizedBox(height: 10.h),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomButton(
                  width: double.infinity,
                  onPressed: () {
                    NavigationHelper.pushReplacementAll(context, HomeView());
                  },
                  child: TextApp(
                    LocaleKeys.home.tr(),
                    style: context.textStyleButton,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
