import 'dart:developer';

import 'package:clean_arc/core/constant.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/account_type_model.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/registrationCubit/registration_cubit.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/register/register_view.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SignUpText.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/item/AccountTypeItem.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/create_account_custom_bar.dart';
import '../../widgets/progress_line.dart';
import '../login/login_view.dart';

class SelectAccountTypeScreen extends StatelessWidget {
  const SelectAccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => RegistrationCubit(),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            return Padding(
              padding: 16.padHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CreateAccountCustomBar(
                    fillItems: 1,
                    haveBackButton: false,
                  ),
                  24.verticalSpace,
                  Text(
                    LocaleKeys.select_account_type.tr(),
                      style: AppTextTheme.bodySmallMediumBold
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 15.w,
                        mainAxisSpacing: 15.w,
                        childAspectRatio: 1,
                      ),
                      itemCount: state.accountTypes.length,
                      itemBuilder: (context, index) {
                        return AccountTypeItem(
                          type:state.accountTypes[index],
                          isSelected: state.registerModel.userTypeId!=null&&state.registerModel.userTypeId== state.accountTypes[index].userTypeId,
                          onTap: () {
                            log('Selected: ${state.accountTypes[index].label}');
                            context.read<RegistrationCubit>().setSelectedType(state.accountTypes[index].userTypeId);
                          },
                        );
                      },
                    ),
                  ),
                  CustomButton(
                      width: double.infinity,
                      onPressed: () {
                        context.read<RegistrationCubit>().getMaritalStatus();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (con) =>
                              RegisterView(registerCubit: context.read<RegistrationCubit>(),)),
                        );
                      },
                      child: TextApp(
                        LocaleKeys.next.tr(),
                        style: context.textStyleButton,
                      )),
                  16.verticalSpace,
                  SignUpText(
                    text: LocaleKeys.have_an_account.tr(),
                    actionText: LocaleKeys.signIn.tr(),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                            (Route<dynamic> route) => false,
                      );
                    },
                  ),
                  16.verticalSpace
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
