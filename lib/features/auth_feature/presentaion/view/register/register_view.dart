import 'package:clean_arc/core/app/enums/gender.dart';
import 'package:clean_arc/core/presentation/widget/custom_drop_down-generic.dart';
import 'package:clean_arc/core/presentation/widget/on_tap.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils/helper/validator.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/item.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/register/complete_register_view.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SignUpText.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/create_account_custom_bar.dart' show CreateAccountCustomBar;
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/presentation/util/dialogs/show_modal_date_picker.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_them.dart';
import '../../controller/registrationCubit/registration_cubit.dart';
import '../login/login_view.dart';

@RoutePage()
class RegisterView extends StatelessWidget {
  const RegisterView({super.key, required this.registerCubit});

  final RegistrationCubit registerCubit;

  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: context.color.whiteColor,
        body: BlocProvider.value(
          value: registerCubit,
          child: BlocBuilder<RegistrationCubit, RegistrationState>(
            builder: (context, state) {
              return Padding(
                padding: 16.padHorizontal,
                child: Column(
                  children: [
                    CreateAccountCustomBar(
                      fillItems: 2,
                    ),
                    24.verticalSpace,
                    state.registrationStatus is MaritalStatusLoading?
                    CircularProgressIndicator():
                    Expanded(
                      child: SingleChildScrollView(
                        child: Form(
                          key: state.registerKey,
                          child: Column(
                            children: [
                              Center(
                                child: OnTap(
                                  onTap: () {
                                    context.read<RegistrationCubit>().setProfilePicture();
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      BlocBuilder<RegistrationCubit, RegistrationState>(
                                        buildWhen: (prevState, current) =>
                                        current.registrationStatus is UploadImage,
                                        builder: (context, state) {
                                          return Container(
                                            margin: 15.padTop + 10.padBottom,
                                            padding:
                                            state.profileImage == null ? 35.padAll : 0.padAll,
                                            width: 100.w,
                                            height: 100.w,
                                            decoration: BoxDecoration(
                                              color: AppColors.white,
                                              borderRadius: BorderRadius.circular(100.r),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: AppColors.lightGrey,
                                                  blurRadius: 6,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: state.profileImage == null
                                                ? AppImages.images.core.svg.addImage.svg(width:30.w,height:30.w,colorFilter: ColorFilter.mode(
                                                AppColors.grey2,
                                                BlendMode.srcIn),
                                            )
                                                : ClipOval(
                                              child: Image.file(
                                                state.profileImage!,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      Text(
                                       LocaleKeys.addPhoto.tr(),
                                        style: AppTextTheme.bodySmall,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              16.verticalSpace,
                              CustomTextField(
                                isShowBorder: true,
                                fillColor: AppColors.white,
                                showTitle: true,
                                titleText: "${LocaleKeys.name.tr()} *",
                                hintText: LocaleKeys.enterYourName.tr(),
                                onValidate: Validator.validate,
                                onChanged: (value){
                                  context.read<RegistrationCubit>().setName(value);
                                },
                              ),
                              16.verticalSpace,
                              CustomTextField(
                                isShowBorder: true,
                                fillColor: AppColors.white,
                                showTitle: true,
                                titleText: "${LocaleKeys.userName.tr()} *",
                                hintText: LocaleKeys.enterUserName.tr(),
                                onValidate: Validator.validate,
                                onChanged: (value){
                                  context.read<RegistrationCubit>().setUserName(value);
                                },
                              ),
                              16.verticalSpace,
                              CustomTextField(
                                isShowBorder: true,
                                inputType: TextInputType.phone,
                                fillColor: AppColors.white,
                                showTitle: true,
                                titleText: "${LocaleKeys.phoneNumber.tr()} *",
                                hintText: LocaleKeys.enterPhoneNumber.tr(),
                                onValidate: Validator.validate,
                                onChanged: (value){
                                  context.read<RegistrationCubit>().setPhoneNumber(value);
                                },
                              ),
                              16.verticalSpace,
                              CustomTextField(
                                isShowBorder: true,
                                fillColor: AppColors.white,
                                showTitle: true,
                                inputType: TextInputType.emailAddress,
                                titleText: "${LocaleKeys.email.tr()} *",
                                hintText: LocaleKeys.enterYourEmail.tr(),
                                onValidate: Validator.validateEmail,
                                onChanged: (value){
                                  context.read<RegistrationCubit>().setEmail(value);
                                },
                              ),
                              16.verticalSpace,
                              CustomDropDownGeneric<Gender>(
                                items: state.genders,
                                showTitle: true,
                                titleText: "${LocaleKeys.gender.tr()} *",
                                displayItem: (gender)=>gender.name(),
                                fillColor: AppColors.white,
                                validator: (val)=>Validator.validateGender(val?.name()),
                                text: LocaleKeys.selectYourGender.tr(),
                                onChange: (gender){
                                  context.read<RegistrationCubit>().setGender(gender);
                                },
                              ),
                              16.verticalSpace,
                              CustomDropDownGeneric<Item>(
                                items: state.maritalStatus,
                                showTitle: true,
                                titleText: "${LocaleKeys.maritalStatus.tr()} *",
                                displayItem: (status)=>status.name??"",
                                fillColor: AppColors.white,
                                validator: (val)=>Validator.validate(val?.name),
                                text: LocaleKeys.selectYourMaritalStatus.tr(),
                                onChange: (value){
                                  context.read<RegistrationCubit>().setMaritalStatus(value);
                                },
                              ),
                              16.verticalSpace,
                              CustomTextField(
                                isShowBorder: true,
                                fillColor: AppColors.white,
                                showTitle: true,
                                inputType: TextInputType.phone,
                                titleText: "${LocaleKeys.nationalId.tr()} *",
                                hintText: LocaleKeys.enterNationalId.tr(),
                                onValidate: Validator.validateNationalId,
                                onChanged: (value){
                                  context.read<RegistrationCubit>().setNationalId(value);
                                },
                              ),
                              16.verticalSpace,
                              OnTap(
                                onTap: (){
                                  showModalSingleDatePicker(
                                      context: context,
                                      onSubmit: (date) {
                                        context.read<RegistrationCubit>().setDateOfBirth(date,context);
                                      },
                                      date: context.read<RegistrationCubit>()
                                          .state.registerModel.dob);
                                },
                                child: CustomTextField(
                                  controller: state.dobController,
                                  isEnabled: false,
                                  suffixIcon: Padding(
                                    padding: 8.padAll,
                                    child: AppImages.images.core.svg.date.svg(),
                                  ),
                                  onValidate: Validator.validateDateOfBirth,
                                  isShowBorder: true,
                                  fillColor: context.color.whiteColor,
                                  showTitle: true,
                                  titleText: "${LocaleKeys.birthDate.tr()} *",
                                  hintText: LocaleKeys.chooseBirthDate.tr(),
                                ),
                              ),
                              24.verticalSpace,
                              CustomButton(
                                width: double.infinity,
                                onPressed: () {
                                  if(state.registerKey.currentState!.validate()){
                                    if(state.companies.isEmpty||state.countries.isEmpty){
                                      context.read<RegistrationCubit>().initThird();
                                    }
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (con) => CompleteRegisterView(cubit: context.read<RegistrationCubit>(),),
                                      ),
                                    );
                                  }

                                },
                                child: TextApp(
                                  LocaleKeys.next.tr(),
                                  style: context.textStyleButton,
                                ),
                              ),
                              24.verticalSpace,
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
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

