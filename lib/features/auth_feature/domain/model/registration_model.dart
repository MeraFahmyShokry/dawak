import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:json_annotation/json_annotation.dart';

class RegistrationModel {
  @JsonKey(name: "userDto")
  UserDto? userDto;

  RegistrationModel({
    this.userDto,
  });

  RegistrationModel copyWith({
    UserDto? userDto,
  }) =>
      RegistrationModel(
        userDto: userDto ?? this.userDto,
      );

  factory RegistrationModel.fromJson(Map<String, dynamic> json) => RegistrationModel(
    userDto: json['userDto'] == null
        ? null
        : UserDto.fromJson(json['userDto'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => <String, dynamic>{'userDto': userDto};
}

class UserDto {
  @JsonKey(name: "isAcceptHomeVisit")
  bool? isAcceptHomeVisit;
  @JsonKey(name: "experienceYear")
  int? experienceYear;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "specialistId")
  int? specialistId;
  @JsonKey(name: "nationalId")
  String? nationalId;
  @JsonKey(name: "maritalStatus")
  String? maritalStatus;
  @JsonKey(name: "profileDescription")
  String? profileDescription;
  @JsonKey(name: "userName")
  String? userName;
  @JsonKey(name: "password")
  String? password;
  @JsonKey(name: "genderId")
  int? genderId;
  @JsonKey(name: "countryId")
  int? countryId;
  @JsonKey(name: "insuranceCompanyId")
  int? insuranceCompanyId;
  @JsonKey(name: "userTypeId")
  int? userTypeId;
  @JsonKey(name: "phoneNumber")
  String? phoneNumber;
  @JsonKey(name: "dob")
  DateTime? dob;
  @JsonKey(name: "addressDto")
  AddressDto? addressDto;
  @JsonKey(name: "certificatePath")
  dynamic certificatePath;
  @JsonKey(name: "syndicateCardPath")
  dynamic syndicateCardPath;
  @JsonKey(name: "photo")
  MultipartFile? photo;

  UserDto({
    this.isAcceptHomeVisit,
    this.experienceYear,
    this.email,
    this.name,
    this.specialistId,
    this.nationalId,
    this.maritalStatus,
    this.profileDescription,
    this.userName,
    this.password,
    this.genderId,
    this.countryId,
    this.insuranceCompanyId,
    this.userTypeId,
    this.phoneNumber,
    this.dob,
    this.addressDto,
    this.certificatePath,
    this.syndicateCardPath,
    this.photo,
  });

  UserDto copyWith({
    bool? isAcceptHomeVisit,
    int? experienceYear,
    String? email,
    String? name,
    int? specialistId,
    String? nationalId,
    String? maritalStatus,
    String? profileDescription,
    String? userName,
    String? password,
    int? genderId,
    int? countryId,
    int? insuranceCompanyId,
    int? userTypeId,
    String? phoneNumber,
    DateTime? dob,
    AddressDto? addressDto,
    dynamic certificatePath,
    dynamic syndicateCardPath,
    MultipartFile? photo,
  }) =>
      UserDto(
        isAcceptHomeVisit: isAcceptHomeVisit ?? this.isAcceptHomeVisit,
        experienceYear: experienceYear ?? this.experienceYear,
        email: email ?? this.email,
        name: name ?? this.name,
        specialistId: specialistId ?? this.specialistId,
        nationalId: nationalId ?? this.nationalId,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        profileDescription: profileDescription ?? this.profileDescription,
        userName: userName ?? this.userName,
        password: password ?? this.password,
        genderId: genderId ?? this.genderId,
        countryId: countryId ?? this.countryId,
        insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId,
        userTypeId: userTypeId ?? this.userTypeId,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        dob: dob ?? this.dob,
        addressDto: addressDto ?? this.addressDto,
        certificatePath: certificatePath ?? this.certificatePath,
        syndicateCardPath: syndicateCardPath ?? this.syndicateCardPath,
        photo: photo ?? this.photo,
      );

  factory UserDto.fromJson(Map<String, dynamic> json) => UserDto(
    isAcceptHomeVisit: json['isAcceptHomeVisit'] as bool?,
    experienceYear: (json['experienceYear'] as num?)?.toInt(),
    email: json['email'] as String?,
    name: json['name'] as String?,
    specialistId: (json['specialistId'] as num?)?.toInt(),
    nationalId: json['nationalId'] as String?,
    maritalStatus: json['maritalStatus'] as String?,
    profileDescription: json['profileDescription'] as String?,
    userName: json['userName'] as String?,
    password: json['password'] as String?,
    genderId: (json['genderId'] as num?)?.toInt(),
    countryId: (json['countryId'] as num?)?.toInt(),
    insuranceCompanyId: (json['insuranceCompanyId'] as num?)?.toInt(),
    userTypeId: (json['userTypeId'] as num?)?.toInt(),
    phoneNumber: json['phoneNumber'] as String?,
    dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
    addressDto: json['addressDto'] == null
        ? null
        : AddressDto.fromJson(json['addressDto'] as Map<String, dynamic>),
    certificatePath: json['certificatePath'],
    syndicateCardPath: json['syndicateCardPath'],
    photo: json['photo'] as MultipartFile?,
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'isAcceptHomeVisit': isAcceptHomeVisit,
    'experienceYear': experienceYear,
    'email': email,
    'name': name,
    'specialistId': specialistId,
    'nationalId': nationalId,
    'maritalStatus': maritalStatus,
    'profileDescription': profileDescription,
    'userName': userName,
    'password': password,
    'genderId': genderId,
    'countryId': countryId,
    'insuranceCompanyId': insuranceCompanyId,
    'userTypeId': userTypeId,
    'phoneNumber': phoneNumber,
    'dob': dob?.toIso8601String(),
    'addressDto': addressDto,
    'certificatePath': certificatePath,
    'syndicateCardPath': syndicateCardPath,
    'photo': photo,
  };
}

@JsonSerializable()
class AddressDto {
  @JsonKey(name: "street")
  String? street;
  @JsonKey(name: "city")
  String? city;
  @JsonKey(name: "postalCode")
  String? postalCode;
  @JsonKey(name: "countryId")
  int? countryId;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "latitude")
  int? latitude;
  @JsonKey(name: "longitude")
  int? longitude;

  AddressDto({
    this.street,
    this.city,
    this.postalCode,
    this.countryId,
    this.country,
    this.latitude,
    this.longitude,
  });

  AddressDto copyWith({
    String? street,
    String? city,
    String? postalCode,
    int? countryId,
    String? country,
    int? latitude,
    int? longitude,
  }) =>
      AddressDto(
        street: street ?? this.street,
        city: city ?? this.city,
        postalCode: postalCode ?? this.postalCode,
        countryId: countryId ?? this.countryId,
        country: country ?? this.country,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );

  factory AddressDto.fromJson(Map<String, dynamic> json) => AddressDto(
    street: json['street'] as String?,
    city: json['city'] as String?,
    postalCode: json['postalCode'] as String?,
    countryId: (json['countryId'] as num?)?.toInt(),
    country: json['country'] as String?,
    latitude: (json['latitude'] as num?)?.toInt(),
    longitude: (json['longitude'] as num?)?.toInt(),
  );

  Map<String, dynamic> toJson() =>  <String, dynamic>{
    'street': street,
    'city': city,
    'postalCode':postalCode,
    'countryId': countryId,
    'country': country,
    'latitude': latitude,
    'longitude': longitude,
  };
}
