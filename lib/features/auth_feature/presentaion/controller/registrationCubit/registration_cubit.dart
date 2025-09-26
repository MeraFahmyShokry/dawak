import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/features/auth_feature/domain/model/country.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/app/enums/gender.dart';
import '../../../../../core/presentation/util/date_time_fun.dart';
import '../../../../../core/utils_package/utils_package.dart';
import '../../../../../gen/locale_keys.g.dart';
import '../../../domain/model/insurance_company.dart';
import '../../../domain/model/item.dart';
import '../../../domain/model/registration_model.dart';
import '../../../domain/model/user_type.dart';
import '../../../domain/repository/registration_repository.dart';

part 'registration_state.dart';
part 'registration_cubit.freezed.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() :
      repository=getIt<RegistrationRepository>(),
        super( RegistrationState(
    registerModel: UserDto(),
    registrationStatus: Initial(),
    dobController: TextEditingController(),
    genders: [
      Gender.male,
      Gender.female
    ],
    registerKey: GlobalKey<FormState>(),
    accountTypes: [
      UserType(
          imagePath: AppImages.images.core.svg.pharma.path,
          label: LocaleKeys.pharmacy.tr(),
        isActive: false
      ),
      UserType(
          imagePath: AppImages.images.core.svg.scancenter.path,
          label: LocaleKeys.scan_center.tr(),
          isActive: false
      ),
      UserType(
          imagePath: AppImages.images.core.svg.lab.path,
          label: LocaleKeys.lab.tr(),
          isActive: false
      ),
      ////id correct
      UserType(
          imagePath: AppImages.images.core.svg.patient.path,
          label: LocaleKeys.patient.tr(),
          userTypeId: 2,
          isActive: true
      ),
      UserType(
          imagePath: AppImages.images.core.svg.doctor.path,
          label: LocaleKeys.doctor.tr(),
          userTypeId: 3,
          isActive: false
      ),
      UserType(
          imagePath: AppImages.images.core.svg.nurse.path,
          label: LocaleKeys.nurse.tr(),
        userTypeId: 5,
          isActive: false
      ),
      ////
      UserType(
          imagePath: AppImages.images.core.svg.rxMarket.path,
          label: LocaleKeys.rx_market.tr(),
          isActive: false
      ),

    ]
  ));
  final RegistrationRepository repository;

  ///first screen
  void setSelectedType(int? userTypeId){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(userTypeId: userTypeId)));
  }

  /// second screen
  Future<void> getMaritalStatus() async {
    emit(state.copyWith(
      registrationStatus: MaritalStatusLoading()
    ));

    final result = await repository.getMaritalStatus();

    result.fold(
          (failure) {
            emit(state.copyWith(
                registrationStatus: MaritalStatusFailure()
            ));
      },
          (result) async {
            emit(state.copyWith(
                registrationStatus: MaritalStatusSuccess(),
              maritalStatus: result??[]
            ));
      },
    );
  }

  Future<void> setProfilePicture() async {
    final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      var image = File(pickedFile.path);

      emit(state.copyWith(
          registrationStatus: const RegistrationStatus.uploadImage(),
          profileImage: image,
          registerModel:
          state.registerModel.copyWith(photo: await MultipartFile.fromFile(
            pickedFile.path,
            filename: image.path.split('/').last,
          ),
          )
      ));
    }
  }

  void setName(String? name){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(name: name)));
  }

  void setUserName(String? userName){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(userName: userName)));
  }

  void setPhoneNumber(String? phoneNumber){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(phoneNumber: phoneNumber)));
  }

  void setEmail(String? email){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(email: email)));
  }

  void setNationalId(String? nationalId){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(nationalId: nationalId)));
  }

  void setDateOfBirth(DateTime? date,BuildContext context){
    state.dobController.text= AppDateTimeFormat.convertSentDate(date, context)??"";
    emit(state.copyWith(registerModel: state.registerModel.copyWith(dob: date)));
  }

  void setGender(Gender? gender){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(genderId: gender?.id())));
  }

  void setMaritalStatus(Item? status){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(maritalStatus: status?.name??"")));
  }

  /// third screen
  Future<void> initThird() async {
    emit(state.copyWith(
        registrationStatus: SecondLoading()
    ));

    var result =await Future.wait([
      getCountries(),
      getCompanies()
    ]);

    List<Country>? countries= result[0] as List<Country>?;
    List<InsuranceCompany>? companies= result[1] as List<InsuranceCompany>?;
    if(countries!=null && companies!=null){
      emit(state.copyWith(registrationStatus: SecondSuccess(),companies: companies,countries: countries));
    }else{
      emit(state.copyWith(registrationStatus: SecondFailure()));
    }
  }

  Future<List<Country>?> getCountries() async {
    final result = await repository.getCountries();

    return result.fold(
          (failure) {
        return null;
      },
          (result) async {
        return result??[];
      },
    );
  }

  Future<List<InsuranceCompany>?> getCompanies() async {
    final result = await repository.getCompanies();

    return result.fold(
          (failure) {
            return null;
      },
          (result) async {
            return result??[];
      },
    );
  }

  void setCountry(Country? country){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(addressDto:state.registerModel.addressDto?.copyWith(
      country: country?.country,
      countryId: country?.countryId,
    ))));
  }

  void setCity(String? city){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(addressDto:state.registerModel.addressDto?.copyWith(
      city: city
    ))));
  }

  void setStreet(String? street){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(addressDto:state.registerModel.addressDto?.copyWith(
        street: street
    ))));
  }

  void setPostalCode(String? code){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(addressDto:state.registerModel.addressDto?.copyWith(
        postalCode: code
    ))));
  }

  void setCompany(InsuranceCompany? company){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(insuranceCompanyId: company?.insuranceCompanyId)));
  }

  Future<void> setInsuranceCard() async {
    final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      var image = File(pickedFile.path);

      emit(state.copyWith(
          registrationStatus: UploadInsuranceImage(),
          insuranceImage: image,
          // registerModel:
          // state.registerModel.copyWith(photo: await MultipartFile.fromFile(
          //   pickedFile.path,
          //   filename: image.path.split('/').last,
          // ),
          // )
      ));
    }
  }

  ///Fourth screen
  void setPassword(String? password){
    emit(state.copyWith(registerModel: state.registerModel.copyWith(password: password)));
  }
}
