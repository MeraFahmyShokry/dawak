import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/presentation/widget/screen_utils.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/register/compleate_register_view.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SignUpText.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
                                    titleText: LocaleKeys.firstName.tr(),
                                    hintText: LocaleKeys.enterFirstName.tr(),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomTextField(
                                    isShowBorder: true,
                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    isPassword: true,
                                    titleText: LocaleKeys.lastName.tr(),
                                    hintText: LocaleKeys.enterLastName.tr(),
                                  ),
                                  CustomTextField(
                                    isShowBorder: true,
                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    titleText: LocaleKeys.phoneNumber.tr(),
                                    hintText:
                                        LocaleKeys.enterPhoneNumber.tr(),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomTextField(
                                    isShowBorder: true,
                                    fillColor: context.color.whiteColor,
                                    showTitle: true,
                                    titleText: LocaleKeys.nationalId.tr(),
                                    hintText: LocaleKeys.enterNationalId.tr(),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  CustomDropdownField(
                                    onChanged: (value) {},
                                    items: ["male", "female"],
                                    title: LocaleKeys.gender.tr(),
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
                                    titleText: LocaleKeys.birthDate.tr(),
                                    hintText: LocaleKeys.chooseBirthDate.tr(),
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
                                  //                   CompleateRegisterView()),
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
