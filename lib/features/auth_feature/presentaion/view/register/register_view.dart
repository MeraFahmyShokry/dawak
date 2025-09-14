import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/presentation/widget/screen_utils.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/register/compleate_register_view.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SignUpText.dart';
import 'package:clean_arc/features/splash_feature/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  static const path = '/RegisterView';

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> with ScreenUtils {
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
                title: context.translate.createAccount,
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
                                        value: 0.60,
                                        backgroundColor: context
                                            .color.greyCounterBorderColor,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                context.color.primaryColor!),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomTextField(
                                    isShowBorder: true,
                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    titleText: context.translate.firstName,
                                    hintText: context.translate.enterFirstName,
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomTextField(
                                    isShowBorder: true,
                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    isPassword: true,
                                    titleText: context.translate.lastName,
                                    hintText: context.translate.enterLastName,
                                  ),
                                  CustomTextField(
                                    isShowBorder: true,
                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    titleText: context.translate.phoneNumber,
                                    hintText:
                                        context.translate.enterPhoneNumber,
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomTextField(
                                    isShowBorder: true,
                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    titleText: context.translate.nationalId,
                                    hintText: context.translate.enterNationalId,
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomDropdownField(
                                    onChanged: (value) {},
                                    items: ["male", "female"],
                                    title: context.translate.gender,
                                    showTitle: true,
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomTextField(
                                    onTap: () {},
                                    suffixIcon: Image.asset(
                                      'assets/images/core/png/calenicon.png',
                                      fit: BoxFit.fill,
                                    ),
                                    isShowBorder: true,
                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    titleText: context.translate.birthDate,
                                    hintText: context.translate.chooseBirthDate,
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),

                              CustomButton(
                                  width: double.infinity,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CompleateRegisterView()),
                                    );
                                  },
                                  child: TextApp(
                                    context.translate.next,
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
                                  //                   CompleateRegisterView()),
                                  //         );
                                  //       },
                                  //       child: TextApp(
                                  //         context.translate.next,
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
                                  //         context.translate.signIn,
                                  //         style: context.textStyleButton,
                                  //       ));
                                  // }),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  SignUpText(
                                    text: context.translate.have_an_account,
                                    actionText: context.translate.signIn,
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           SelectAccountTypeScreen()),
                                      // );
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
