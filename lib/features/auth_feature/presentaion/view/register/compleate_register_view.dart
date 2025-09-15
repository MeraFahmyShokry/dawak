import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/presentation/widget/screen_utils.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/otp/otp_view.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SelectAccountTypeScreen.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SignUpText.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/UploadMedicalInsuranceImage.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//@RoutePage()
class CompleateRegisterView extends StatefulWidget {
  const CompleateRegisterView({super.key});

  static const path = '/CompleateRegisterView';

  @override
  State<CompleateRegisterView> createState() => _CompleateRegisterViewState();
}

class _CompleateRegisterViewState extends State<CompleateRegisterView>
    with ScreenUtils {
  @override
  Widget build(BuildContext context) {
    LoginCubit authCubit = context.read<LoginCubit>();
    return WillPopScope(
      onWillPop: () async {
        // MoveToBackground.moveTaskToBack();
        return false;
      },
      child: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
        print(state);
      }, builder: (context, state) {
        return Scaffold(
            backgroundColor: context.color.whiteColor,
            appBar: CustomAppBar(
                title: LocaleKeys.createAccount.tr(),
                leadingWidget: Icon(
                  Icons.arrow_back_ios,
                  color: context.color.primaryColor,
                  size: 24,
                ),
                onBackPressed: () {
                  Navigator.pop(context);
                }),
            body: SingleChildScrollView(
              child: SizedBox(
                height: context.height,
                width: context.width,
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Form(
                              // key: context.read<LoginCubit>().loginFormKey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 32.h,
                                  ),
                                  Container(
                                    height: 8.0.h,
                                    decoration: BoxDecoration(
                                      color: context.color.borderColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.sp)),
                                    ),
                                    child: ClipRRect(
                                      child: LinearProgressIndicator(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.sp)),
                                        color: context.color.primaryColor,
                                        value: 100,
                                        backgroundColor: context
                                            .color.greyCounterBorderColor,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                context.color.primaryColor!),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  CustomTextField(
                                      isShowBorder: true,
                                      fillColor: context.color.whiteColor,
                                      showTitle: true,
                                      titleText: LocaleKeys.email.tr(),
                                      hintText:
                                          LocaleKeys.enterAValidEmail.tr(),
                                      // controller:
                                      //     authCubit.serialNumberEmailController,
                                      onValidate: (value) {
                                        print(value.isDigit());

                                        if (value.isDigit() == true &&
                                            (value?.length ?? 0) <= 5) {
                                          return LocaleKeys.enterserialNumberEmail.tr();
                                        }

                                        // if (value.isDigit() == false &&
                                        //     (EmailValidator.validate(
                                        //             value ?? "") ==
                                        //         false)) {
                                        //   return context.translate
                                        //       .enterAValidPhoneOrEmail;
                                        // }
                                      }

                                      // isShowBorder: true,
                                      ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomTextField(
                                    isShowBorder: true,

                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    isPassword: true,
                                    titleText: LocaleKeys.password.tr(),
                                    hintText: LocaleKeys.enterPassword.tr(),
                                    // controller: authCubit.passwordController,
                                    // onValidate: (value) {
                                    //   if (value == null ||
                                    //       value.length < 8) {
                                    //     return context
                                    //         .translate.passwordCondition1;
                                    //   }
                                    // },

                                    // isShowBorder: true,
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  CustomDropdownField(
                                    onChanged: (value) {},
                                    items: ["male", "female"],
                                    title:
                                        LocaleKeys.haveMedicalInsurance.tr(),
                                    showTitle: true,
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  UploadMedicalInsuranceImage(),
                                  SizedBox(
                                    height: 16.h,
                                  ),

                                  CustomButton(
                                      width: double.infinity,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => OtpView()),
                                        );
                                      },
                                      child: TextApp(
                                        LocaleKeys.next.tr(),
                                        style: context.textStyleButton,
                                      )),

                                  // state.maybeWhen(orElse: () {
                                  //   return CustomButton(
                                  //       width: double.infinity,
                                  //       onPressed: () {
                                  //         Navigator.push(
                                  //           context,
                                  //           MaterialPageRoute(
                                  //               builder: (context) =>
                                  //                   OtpView()),
                                  //         );
                                  //       },
                                  //       child: TextApp(
                                  //         LocaleKeys.next.tr(),
                                  //         style: context.textStyleButton,
                                  //       ));
                                  // }, loading: () {
                                  //   return CustomButton(
                                  //       width: double.infinity,
                                  //       isLoading: true,
                                  //       onPressed: () {
                                  //         // context.read<LoginCubit>().login();
                                  //       },
                                  //       child: TextApp(
                                  //         LocaleKeys.signIn.tr(),
                                  //         style: context.textStyleButton,
                                  //       ));
                                  // }),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  SignUpText(
                                    text: LocaleKeys.have_an_account.tr(),
                                    actionText: LocaleKeys.signIn.tr(),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SelectAccountTypeScreen()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
      }),
    );
  }
}
