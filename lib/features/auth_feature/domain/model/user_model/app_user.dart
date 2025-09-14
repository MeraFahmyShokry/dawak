// To parse this JSON data, do
//
//     final appUser = appUserFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'app_user.g.dart';

AppUser appUserFromJson(String str) => AppUser.fromJson(json.decode(str));

String appUserToJson(AppUser data) => json.encode(data.toJson());

@JsonSerializable()
class AppUser {
  @JsonKey(name: "userId")
  String? userId;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "photo")
  String? photo;
  @JsonKey(name: "userName")
  String? userName;
  @JsonKey(name: "password")
  String? password;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phoneNumber")
  String? phoneNumber;
  @JsonKey(name: "address")
  String? address;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "dob")
  DateTime? dob;
  @JsonKey(name: "maritalStatus")
  String? maritalStatus;
  @JsonKey(name: "insuranceCompanyId")
  int? insuranceCompanyId;
  @JsonKey(name: "countryId")
  int? countryId;
  @JsonKey(name: "nationalId")
  String? nationalId;
  @JsonKey(name: "genderId")
  int? genderId;
  @JsonKey(name: "specialistId")
  int? specialistId;
  @JsonKey(name: "experienceYear")
  int? experienceYear;
  @JsonKey(name: "certificatePath")
  String? certificatePath;
  @JsonKey(name: "syndicateCardPath")
  String? syndicateCardPath;
  @JsonKey(name: "profileDescription")
  String? profileDescription;
  @JsonKey(name: "reviewCount")
  dynamic reviewCount;
  @JsonKey(name: "averageRating")
  dynamic averageRating;
  @JsonKey(name: "userTypeId")
  int? userTypeId;
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "isActive")
  bool? isActive;
  @JsonKey(name: "isAcceptHomeVisit")
  bool? isAcceptHomeVisit;
  @JsonKey(name: "attachment")
  dynamic attachment;
  @JsonKey(name: "countryDto")
  CountryDto? countryDto;
  @JsonKey(name: "userTypeDto")
  UserTypeDto? userTypeDto;
  @JsonKey(name: "previousHistoryDto")
  List<dynamic>? previousHistoryDto;
  @JsonKey(name: "insuranceCompanyDto")
  InsuranceCompanyDto? insuranceCompanyDto;
  @JsonKey(name: "patientRelevantDTo")
  List<PatientRelevantDTo>? patientRelevantDTo;
  @JsonKey(name: "auth")
  bool? auth;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "token")
  String? token;


  AppUser({
    this.userId,
    this.name,
    this.photo,
    this.userName,
    this.password,
    this.email,
    this.phoneNumber,
    this.address,
    this.location,
    this.dob,
    this.maritalStatus,
    this.insuranceCompanyId,
    this.countryId,
    this.nationalId,
    this.genderId,
    this.specialistId,
    this.experienceYear,
    this.certificatePath,
    this.syndicateCardPath,
    this.profileDescription,
    this.reviewCount,
    this.averageRating,
    this.userTypeId,
    this.code,
    this.isActive,
    this.isAcceptHomeVisit,
    this.attachment,
    this.countryDto,
    this.userTypeDto,
    this.previousHistoryDto,
    this.insuranceCompanyDto,
    this.patientRelevantDTo,
    this.id,
    this.token,
    this.auth
  });

  AppUser copyWith({
    String? userId,
    String? name,
    String? photo,
    String? userName,
    String? password,
    String? email,
    String? phoneNumber,
    String? address,
    String? location,
    DateTime? dob,
    String? maritalStatus,
    int? insuranceCompanyId,
    int? countryId,
    String? nationalId,
    int? genderId,
    int? specialistId,
    int? experienceYear,
    String? certificatePath,
    String? syndicateCardPath,
    String? profileDescription,
    dynamic reviewCount,
    dynamic averageRating,
    int? userTypeId,
    String? code,
    bool? isActive,
    bool? isAcceptHomeVisit,
    dynamic attachment,
    CountryDto? countryDto,
    UserTypeDto? userTypeDto,
    List<dynamic>? previousHistoryDto,
    InsuranceCompanyDto? insuranceCompanyDto,
    List<PatientRelevantDTo>? patientRelevantDTo,
  bool? auth,
  String? id,
  String? token
  }) =>
      AppUser(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        photo: photo ?? this.photo,
        userName: userName ?? this.userName,
        password: password ?? this.password,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        address: address ?? this.address,
        location: location ?? this.location,
        dob: dob ?? this.dob,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId,
        countryId: countryId ?? this.countryId,
        nationalId: nationalId ?? this.nationalId,
        genderId: genderId ?? this.genderId,
        specialistId: specialistId ?? this.specialistId,
        experienceYear: experienceYear ?? this.experienceYear,
        certificatePath: certificatePath ?? this.certificatePath,
        syndicateCardPath: syndicateCardPath ?? this.syndicateCardPath,
        profileDescription: profileDescription ?? this.profileDescription,
        reviewCount: reviewCount ?? this.reviewCount,
        averageRating: averageRating ?? this.averageRating,
        userTypeId: userTypeId ?? this.userTypeId,
        code: code ?? this.code,
        isActive: isActive ?? this.isActive,
        isAcceptHomeVisit: isAcceptHomeVisit ?? this.isAcceptHomeVisit,
        attachment: attachment ?? this.attachment,
        countryDto: countryDto ?? this.countryDto,
        userTypeDto: userTypeDto ?? this.userTypeDto,
        previousHistoryDto: previousHistoryDto ?? this.previousHistoryDto,
        insuranceCompanyDto: insuranceCompanyDto ?? this.insuranceCompanyDto,
        patientRelevantDTo: patientRelevantDTo ?? this.patientRelevantDTo,
        id: id??this.id,
        auth: auth??this.auth,
        token: token??this.token
      );
  AppUser copyWithFromObject({
   AppUser? appUser
  }) =>
      AppUser(
          userId: appUser?.userId ?? userId,
          name: appUser?.name ?? name,
          photo: appUser?.photo ?? photo,
          userName: appUser?.userName ?? userName,
          password: appUser?.password ?? password,
          email: appUser?.email ??email,
          phoneNumber: appUser?.phoneNumber ?? phoneNumber,
          address: appUser?.address ?? address,
          location: appUser?.location ?? location,
          dob: appUser?.dob ?? dob,
          maritalStatus: appUser?.maritalStatus ?? maritalStatus,
          insuranceCompanyId: appUser?.insuranceCompanyId ?? insuranceCompanyId,
          countryId: appUser?.countryId ?? countryId,
          nationalId: appUser?.nationalId ?? nationalId,
          genderId: appUser?.genderId ?? genderId,
          specialistId: appUser?.specialistId ?? specialistId,
          experienceYear: appUser?.experienceYear ?? experienceYear,
          certificatePath: appUser?.certificatePath ??certificatePath,
          syndicateCardPath: appUser?.syndicateCardPath ?? syndicateCardPath,
          profileDescription: appUser?.profileDescription ?? profileDescription,
          reviewCount: appUser?.reviewCount ?? reviewCount,
          averageRating: appUser?.averageRating ?? averageRating,
          userTypeId: appUser?.userTypeId ?? userTypeId,
          code: appUser?.code ?? code,
          isActive: appUser?.isActive ?? isActive,
          isAcceptHomeVisit: appUser?.isAcceptHomeVisit ?? isAcceptHomeVisit,
          attachment: appUser?.attachment ?? attachment,
          countryDto: appUser?.countryDto ?? countryDto,
          userTypeDto: appUser?.userTypeDto ?? userTypeDto,
          previousHistoryDto: appUser?.previousHistoryDto ?? previousHistoryDto,
          insuranceCompanyDto: appUser?.insuranceCompanyDto ?? insuranceCompanyDto,
          patientRelevantDTo: appUser?.patientRelevantDTo ?? patientRelevantDTo,
          id: appUser?.id??id,
          auth: appUser?.auth??auth,
          token: appUser?.token??token
      );
  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);

  Map<String, dynamic> toJson() => _$AppUserToJson(this);
}

@JsonSerializable()
class CountryDto {
  @JsonKey(name: "countryId")
  int? countryId;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "language")
  String? language;
  @JsonKey(name: "currency")
  String? currency;
  @JsonKey(name: "isActive")
  bool? isActive;

  CountryDto({
    this.countryId,
    this.country,
    this.language,
    this.currency,
    this.isActive,
  });

  CountryDto copyWith({
    int? countryId,
    String? country,
    String? language,
    String? currency,
    bool? isActive,
  }) =>
      CountryDto(
        countryId: countryId ?? this.countryId,
        country: country ?? this.country,
        language: language ?? this.language,
        currency: currency ?? this.currency,
        isActive: isActive ?? this.isActive,
      );

  factory CountryDto.fromJson(Map<String, dynamic> json) => _$CountryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDtoToJson(this);
}

@JsonSerializable()
class InsuranceCompanyDto {
  @JsonKey(name: "insuranceCompanyId")
  int? insuranceCompanyId;
  @JsonKey(name: "insuranceCompany")
  String? insuranceCompany;
  @JsonKey(name: "coveredPercentage")
  double? coveredPercentage;
  @JsonKey(name: "isCovered")
  bool? isCovered;
  @JsonKey(name: "isActive")
  bool? isActive;
  @JsonKey(name: "countryId")
  int? countryId;

  InsuranceCompanyDto({
    this.insuranceCompanyId,
    this.insuranceCompany,
    this.coveredPercentage,
    this.isCovered,
    this.isActive,
    this.countryId,
  });

  InsuranceCompanyDto copyWith({
    int? insuranceCompanyId,
    String? insuranceCompany,
    double? coveredPercentage,
    bool? isCovered,
    bool? isActive,
    int? countryId,
  }) =>
      InsuranceCompanyDto(
        insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId,
        insuranceCompany: insuranceCompany ?? this.insuranceCompany,
        coveredPercentage: coveredPercentage ?? this.coveredPercentage,
        isCovered: isCovered ?? this.isCovered,
        isActive: isActive ?? this.isActive,
        countryId: countryId ?? this.countryId,
      );

  factory InsuranceCompanyDto.fromJson(Map<String, dynamic> json) => _$InsuranceCompanyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InsuranceCompanyDtoToJson(this);
}

@JsonSerializable()
class PatientRelevantDTo {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "patientId")
  String? patientId;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "dob")
  DateTime? dob;
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "isActive")
  bool? isActive;

  PatientRelevantDTo({
    this.id,
    this.patientId,
    this.description,
    this.name,
    this.dob,
    this.code,
    this.isActive,
  });

  PatientRelevantDTo copyWith({
    String? id,
    String? patientId,
    String? description,
    String? name,
    DateTime? dob,
    String? code,
    bool? isActive,
  }) =>
      PatientRelevantDTo(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        description: description ?? this.description,
        name: name ?? this.name,
        dob: dob ?? this.dob,
        code: code ?? this.code,
        isActive: isActive ?? this.isActive,
      );

  factory PatientRelevantDTo.fromJson(Map<String, dynamic> json) => _$PatientRelevantDToFromJson(json);

  Map<String, dynamic> toJson() => _$PatientRelevantDToToJson(this);
}

@JsonSerializable()
class UserTypeDto {
  @JsonKey(name: "userTypeId")
  int? userTypeId;
  @JsonKey(name: "userType")
  String? userType;
  @JsonKey(name: "isActive")
  bool? isActive;

  UserTypeDto({
    this.userTypeId,
    this.userType,
    this.isActive,
  });

  UserTypeDto copyWith({
    int? userTypeId,
    String? userType,
    bool? isActive,
  }) =>
      UserTypeDto(
        userTypeId: userTypeId ?? this.userTypeId,
        userType: userType ?? this.userType,
        isActive: isActive ?? this.isActive,
      );

  factory UserTypeDto.fromJson(Map<String, dynamic> json) => _$UserTypeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserTypeDtoToJson(this);
}
