import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/screen_utils.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/home_feature/presentation/view/home_view.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

//@RoutePage()
class OtpView extends StatefulWidget {
  const OtpView({super.key});

  static const path = '/OtpView';

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> with ScreenUtils {
  final String email = "momagdy...@gmail.com";
  String currentOtp = "";
  bool isResendDisabled = false;

  void _verifyOtp() {
    if (currentOtp.length == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SucsessOtpView()),
      );
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text(LocaleKeys.verificationSuccess.tr()),
      //     backgroundColor: Colors.green,
      //   ),
      // );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(LocaleKeys.invalidOtp.tr()),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _resendCode() {
    setState(() {
      isResendDisabled = true;
    });

    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isResendDisabled = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(LocaleKeys.codeResent.tr()),
          backgroundColor: Colors.blue,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      appBar: CustomAppBar(
        title: LocaleKeys.verifyAccount.tr(),
        leadingWidget: Icon(
          Icons.arrow_back_ios,
          color: context.color.primaryColor,
          size: 24,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextApp(
              "${LocaleKeys.checkYourEmail.tr()} $email ${LocaleKeys.forVerificationCode.tr()}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20.h),
            PinCodeTextField(
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
                activeColor: Colors.blue,
                selectedColor: Colors.blueAccent,
              ),
              animationDuration: Duration(milliseconds: 300),
              onChanged: (value) {
                setState(() {
                  currentOtp = value;
                });
              },
              onCompleted: (value) {
                _verifyOtp();
              },
            ),
            SizedBox(height: 20.h),
            RichText(
              text: TextSpan(
                text: LocaleKeys.didNotReceiveCode.tr(),
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
                children: [
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: isResendDisabled ? null : _resendCode,
                      child: TextApp(
                        LocaleKeys.resendCode.tr(),
                        style: TextStyle(
                          color: isResendDisabled ? Colors.grey : Colors.blue,
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
