part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required RegistrationStatus registrationStatus,
    @Default([]) List<UserType> accountTypes,
    required UserDto registerModel,
    File? profileImage,
    File? insuranceImage,
    required TextEditingController dobController,
    @Default([]) List<Gender> genders,
    @Default([]) List<Item> maritalStatus,
    @Default([]) List<Country> countries,
    @Default([]) List<InsuranceCompany> companies,
    required GlobalKey<FormState> registerKey,
    required GlobalKey<FormState> addressKey,
    required GlobalKey<FormState> passwordKey,
}) = _RegistrationState;
}

@freezed
class  RegistrationStatus with _$RegistrationStatus {
  const factory RegistrationStatus.initial() = Initial;

  const factory RegistrationStatus.loading() = Loading;

  const factory RegistrationStatus.changeValue() = ChangeValue;

  const factory RegistrationStatus.uploadImage() = UploadImage;

  const factory RegistrationStatus.uploadInsuranceImage() = UploadInsuranceImage;

  const factory RegistrationStatus.registerLoading() = RegisterLoading;

  const factory RegistrationStatus.registerFailure() = RegisterFailure;

  const factory RegistrationStatus.registerSuccess() = RegisterSuccess;

  const factory RegistrationStatus.maritalStatusLoading() = MaritalStatusLoading;

  const factory RegistrationStatus.maritalStatusFailure() = MaritalStatusFailure;

  const factory RegistrationStatus.maritalStatusSuccess() = MaritalStatusSuccess;

  const factory RegistrationStatus.secondLoading() = SecondLoading;

  const factory RegistrationStatus.secondFailure() = SecondFailure;

  const factory RegistrationStatus.secondSuccess() = SecondSuccess;

}