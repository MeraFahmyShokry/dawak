// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map<String, dynamic> json) => AppUser(
  userId: json['userId'] as String?,
  name: json['name'] as String?,
  photo: json['photo'] as String?,
  userName: json['userName'] as String?,
  password: json['password'] as String?,
  email: json['email'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  address: json['address'] as String?,
  location: json['location'] as String?,
  dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
  maritalStatus: json['maritalStatus'] as String?,
  insuranceCompanyId: (json['insuranceCompanyId'] as num?)?.toInt(),
  countryId: (json['countryId'] as num?)?.toInt(),
  nationalId: json['nationalId'] as String?,
  genderId: (json['genderId'] as num?)?.toInt(),
  specialistId: (json['specialistId'] as num?)?.toInt(),
  experienceYear: (json['experienceYear'] as num?)?.toInt(),
  certificatePath: json['certificatePath'] as String?,
  syndicateCardPath: json['syndicateCardPath'] as String?,
  profileDescription: json['profileDescription'] as String?,
  reviewCount: json['reviewCount'],
  averageRating: json['averageRating'],
  userTypeId: (json['userTypeId'] as num?)?.toInt(),
  code: json['code'] as String?,
  isActive: json['isActive'] as bool?,
  isAcceptHomeVisit: json['isAcceptHomeVisit'] as bool?,
  attachment: json['attachment'],
  countryDto: json['countryDto'] == null
      ? null
      : CountryDto.fromJson(json['countryDto'] as Map<String, dynamic>),
  userTypeDto: json['userTypeDto'] == null
      ? null
      : UserTypeDto.fromJson(json['userTypeDto'] as Map<String, dynamic>),
  previousHistoryDto: json['previousHistoryDto'] as List<dynamic>?,
  insuranceCompanyDto: json['insuranceCompanyDto'] == null
      ? null
      : InsuranceCompanyDto.fromJson(
          json['insuranceCompanyDto'] as Map<String, dynamic>,
        ),
  patientRelevantDTo: (json['patientRelevantDTo'] as List<dynamic>?)
      ?.map((e) => PatientRelevantDTo.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: json['id'] as String?,
  token: json['token'] as String?,
  auth: json['auth'] as bool?,
);

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
  'userId': instance.userId,
  'name': instance.name,
  'photo': instance.photo,
  'userName': instance.userName,
  'password': instance.password,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'address': instance.address,
  'location': instance.location,
  'dob': instance.dob?.toIso8601String(),
  'maritalStatus': instance.maritalStatus,
  'insuranceCompanyId': instance.insuranceCompanyId,
  'countryId': instance.countryId,
  'nationalId': instance.nationalId,
  'genderId': instance.genderId,
  'specialistId': instance.specialistId,
  'experienceYear': instance.experienceYear,
  'certificatePath': instance.certificatePath,
  'syndicateCardPath': instance.syndicateCardPath,
  'profileDescription': instance.profileDescription,
  'reviewCount': instance.reviewCount,
  'averageRating': instance.averageRating,
  'userTypeId': instance.userTypeId,
  'code': instance.code,
  'isActive': instance.isActive,
  'isAcceptHomeVisit': instance.isAcceptHomeVisit,
  'attachment': instance.attachment,
  'countryDto': instance.countryDto,
  'userTypeDto': instance.userTypeDto,
  'previousHistoryDto': instance.previousHistoryDto,
  'insuranceCompanyDto': instance.insuranceCompanyDto,
  'patientRelevantDTo': instance.patientRelevantDTo,
  'auth': instance.auth,
  'id': instance.id,
  'token': instance.token,
};

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) => CountryDto(
  countryId: (json['countryId'] as num?)?.toInt(),
  country: json['country'] as String?,
  language: json['language'] as String?,
  currency: json['currency'] as String?,
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$CountryDtoToJson(CountryDto instance) =>
    <String, dynamic>{
      'countryId': instance.countryId,
      'country': instance.country,
      'language': instance.language,
      'currency': instance.currency,
      'isActive': instance.isActive,
    };

InsuranceCompanyDto _$InsuranceCompanyDtoFromJson(Map<String, dynamic> json) =>
    InsuranceCompanyDto(
      insuranceCompanyId: (json['insuranceCompanyId'] as num?)?.toInt(),
      insuranceCompany: json['insuranceCompany'] as String?,
      coveredPercentage: (json['coveredPercentage'] as num?)?.toDouble(),
      isCovered: json['isCovered'] as bool?,
      isActive: json['isActive'] as bool?,
      countryId: (json['countryId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InsuranceCompanyDtoToJson(
  InsuranceCompanyDto instance,
) => <String, dynamic>{
  'insuranceCompanyId': instance.insuranceCompanyId,
  'insuranceCompany': instance.insuranceCompany,
  'coveredPercentage': instance.coveredPercentage,
  'isCovered': instance.isCovered,
  'isActive': instance.isActive,
  'countryId': instance.countryId,
};

PatientRelevantDTo _$PatientRelevantDToFromJson(Map<String, dynamic> json) =>
    PatientRelevantDTo(
      id: json['id'] as String?,
      patientId: json['patientId'] as String?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      code: json['code'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$PatientRelevantDToToJson(PatientRelevantDTo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'description': instance.description,
      'name': instance.name,
      'dob': instance.dob?.toIso8601String(),
      'code': instance.code,
      'isActive': instance.isActive,
    };

UserTypeDto _$UserTypeDtoFromJson(Map<String, dynamic> json) => UserTypeDto(
  userTypeId: (json['userTypeId'] as num?)?.toInt(),
  userType: json['userType'] as String?,
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$UserTypeDtoToJson(UserTypeDto instance) =>
    <String, dynamic>{
      'userTypeId': instance.userTypeId,
      'userType': instance.userType,
      'isActive': instance.isActive,
    };
