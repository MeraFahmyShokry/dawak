import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/country.dart';
import 'package:clean_arc/features/auth_feature/domain/model/insurance_company.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/registrationCubit/registration_cubit.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/otp/otp_view.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/register/select_account_type_screen.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SignUpText.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/UploadMedicalInsuranceImage.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/app/enums/gender.dart';
import '../../../../../core/presentation/widget/custom_drop_down-generic.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/helper/validator.dart';
import '../../widgets/create_account_custom_bar.dart';
import 'create_password_view.dart';

//@RoutePage()
class CompleteRegisterView extends StatelessWidget {
  const CompleteRegisterView({super.key, required this.cubit});

  final RegistrationCubit cubit;

  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
          backgroundColor: context.color.whiteColor,
          body: Padding(
            padding: 16.padHorizontal,
            child: BlocProvider.value(
              value: cubit,
              child: BlocBuilder<RegistrationCubit, RegistrationState>(
                builder: (context, state) {
                  return Form(
                    key: state.addressKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CreateAccountCustomBar(
                          fillItems: 3,
                        ),
                        24.verticalSpace,
                        state.registrationStatus is SecondLoading?
                        CircularProgressIndicator():
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(LocaleKeys.addressDetails.tr(),
                                      style: AppTextTheme.bodyMediumSemiBold,),
                                    6.verticalSpace,
                                    CustomDropDownGeneric<Country>(
                                      items: state.countries,
                                      showTitle: true,
                                      titleText: "${LocaleKeys.country.tr()} *",
                                      displayItem: (country) => country.country??"",
                                      fillColor: AppColors.white,
                                      validator: (val) =>
                                          Validator.validate(val?.country),
                                      text: LocaleKeys.selectCountry.tr(),
                                      onChange: (country) {
                                        context.read<RegistrationCubit>().setCountry(country);
                                      },
                                    ),
                                    10.verticalSpace,
                                    ///EDIT WITH CITY
                                    CustomDropDownGeneric<Country>(
                                      items: state.countries,
                                      showTitle: true,
                                      titleText: "${LocaleKeys.city.tr()} *",
                                      displayItem: (country) => country.country??"",
                                      fillColor: AppColors.white,
                                      validator: (val) =>
                                          Validator.validate(val?.country),
                                      text: LocaleKeys.selectCity.tr(),
                                      onChange: (country) {
                                        context.read<RegistrationCubit>().setCity(country?.country);
                                      },
                                    ),
                                    10.verticalSpace,
                                    CustomTextField(
                                      isShowBorder: true,
                                      fillColor: AppColors.white,
                                      showTitle: true,
                                      titleText: LocaleKeys.street.tr(),
                                      hintText: LocaleKeys.enterStreet.tr(),
                                      onChanged: (value){
                                        context.read<RegistrationCubit>().setStreet(value);
                                      },
                                    ),
                                    10.verticalSpace,
                                    CustomTextField(
                                      isShowBorder: true,
                                      fillColor: AppColors.white,
                                      showTitle: true,
                                      titleText: LocaleKeys.postalCode.tr(),
                                      hintText: LocaleKeys.enterPostalCode.tr(),
                                      onChanged: (value){
                                        context.read<RegistrationCubit>().setPostalCode(value);
                                      },
                                    ),
                                    24.verticalSpace,
                                    Text(LocaleKeys.medicalInsurance.tr(),
                                      style: AppTextTheme.bodyMediumSemiBold,),
                                    6.verticalSpace,
                                    CustomDropDownGeneric<InsuranceCompany>(
                                      items: state.companies,
                                      showTitle: true,
                                      titleText: LocaleKeys.haveMedicalInsurance.tr(),
                                      displayItem: (company) => company.insuranceCompany??"",
                                      fillColor: AppColors.white,
                                      text: LocaleKeys.selectCompany.tr(),
                                      onChange: (company) {
                                        context.read<RegistrationCubit>().setCompany(company);
                                      },
                                    ),
                                    10.verticalSpace,
                                    UploadMedicalInsuranceImage(
      onTap: (){
        context.read<RegistrationCubit>().setInsuranceCard();
      },
                                      image: state.insuranceImage,
                                    ),
                                    16.verticalSpace,

                                    CustomButton(
                                        width: double.infinity,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (con) => CreatePasswordView(registerCubit: context.read<RegistrationCubit>(),)),
                                          );
                                        },
                                        child: TextApp(
                                          LocaleKeys.next.tr(),
                                          style: context.textStyleButton,
                                        )),
                                    SignUpText(
                                      text: LocaleKeys.have_an_account.tr(),
                                      actionText: LocaleKeys.signIn.tr(),
                                      onTap: () {
                                        if(state.addressKey.currentState!.validate()){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SelectAccountTypeScreen()),
                                          );
                                        }
                                      },
                                    ),
                                    16.verticalSpace,
                                  ],
                                ),
                              ),
                            )
                      ],
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
