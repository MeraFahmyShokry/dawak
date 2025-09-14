class ClinicModel {
  ClinicModel({
    required this.clinicId,
    required this.imageUrl,
    required this.clinicMaxNumber,
    required this.dayOfWeek,
    required this.timeOfDay,
    required this.doctorId,
    required this.assistantId,
    required this.fees,
    required this.phoneNumber,
    required this.isActiveThisWeek,
    required this.medicalCenterId,
    required this.isActive,
    required this.title,
    required this.addressId,
    required this.normalCheckPrice,
    required this.argentCheckPrice,
    required this.consultationPrice,
    required this.clinicLicensPath,
    required this.prescriptionTemplateImagePath,
    required this.doctor,
    required this.assistant,
    required this.address,
    required this.patientAppointments,
  });

  final String? clinicId;
  final String? imageUrl;
  final dynamic clinicMaxNumber;
  final String? dayOfWeek;
  final dynamic timeOfDay;
  final String? doctorId;
  final String? assistantId;
  final dynamic fees;
  final String? phoneNumber;
  final dynamic isActiveThisWeek;
  final String? medicalCenterId;
  final bool? isActive;
  final String? title;
  final dynamic addressId;
  final String? normalCheckPrice;
  final String? argentCheckPrice;
  final String? consultationPrice;
  final dynamic clinicLicensPath;
  final dynamic prescriptionTemplateImagePath;
  final Assistant? doctor;
  final Assistant? assistant;
  final Address? address; // << typed
  final List<dynamic> patientAppointments;

  factory ClinicModel.fromJson(Map<String, dynamic> json){
    return ClinicModel(
      clinicId: json["clinicId"],
      imageUrl: json["imageUrl"],
      clinicMaxNumber: json["clinicMaxNumber"],
      dayOfWeek: json["dayOfWeek"],
      timeOfDay: json["timeOfDay"],
      doctorId: json["doctorId"],
      assistantId: json["assistantId"],
      fees: json["fees"],
      phoneNumber: json["phoneNumber"],
      isActiveThisWeek: json["isActiveThisWeek"],
      medicalCenterId: json["medicalCenterId"],
      isActive: json["isActive"],
      title: json["title"],
      addressId: json["addressId"],
      normalCheckPrice: json["normalCheckPrice"],
      argentCheckPrice: json["argentCheckPrice"],
      consultationPrice: json["consultationPrice"],
      clinicLicensPath: json["clinicLicensPath"],
      prescriptionTemplateImagePath: json["prescriptionTemplateImagePath"],
      doctor: json["doctor"] == null ? null : Assistant.fromJson(json["doctor"]),
      assistant: json["assistant"] == null ? null : Assistant.fromJson(json["assistant"]),
      address: json["address"] == null ? null : Address.fromJson(json["address"]),
      patientAppointments: json["patientAppointments"] == null ? [] : List<dynamic>.from(json["patientAppointments"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "clinicId": clinicId,
    "imageUrl": imageUrl,
    "clinicMaxNumber": clinicMaxNumber,
    "dayOfWeek": dayOfWeek,
    "timeOfDay": timeOfDay,
    "doctorId": doctorId,
    "assistantId": assistantId,
    "fees": fees,
    "phoneNumber": phoneNumber,
    "isActiveThisWeek": isActiveThisWeek,
    "medicalCenterId": medicalCenterId,
    "isActive": isActive,
    "title": title,
    "addressId": addressId,
    "normalCheckPrice": normalCheckPrice,
    "argentCheckPrice": argentCheckPrice,
    "consultationPrice": consultationPrice,
    "clinicLicensPath": clinicLicensPath,
    "prescriptionTemplateImagePath": prescriptionTemplateImagePath,
    "doctor": doctor?.toJson(),
    "assistant": assistant?.toJson(),
    "address": address?.toJson(),
    "patientAppointments": patientAppointments.map((x) => x).toList(),
  };

}

class Assistant {
  Assistant({
    required this.userId,
    required this.name,
    required this.photo,
    required this.userName,
    required this.password,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.location,
    required this.dob,
    required this.maritalStatus,
    required this.insuranceCompanyId,
    required this.countryId,
    required this.nationalId,
    required this.genderId,
    required this.specialistId,
    required this.experienceYear,
    required this.certificatePath,
    required this.syndicateCardPath,
    required this.profileDescription,
    required this.reviewCount,
    required this.averageRating,
    required this.userTypeId,
    required this.code,
    required this.isActive,
    required this.attachment,
    required this.countryDto,
    required this.userTypeDto,
    required this.previousHistoryDto,
    required this.insuranceCompanyDto,
    required this.patientRelevantDTo,
  });

  final String? userId;
  final String? name;
  final String? photo;
  final String? userName;
  final String? password;
  final String? email;
  final String? phoneNumber;
  final String? address; // << typed
  final String? location;
  final DateTime? dob;
  final String? maritalStatus;
  final num? insuranceCompanyId;
  final num? countryId;
  final String? nationalId;
  final num? genderId;
  final num? specialistId;
  final num? experienceYear;
  final dynamic certificatePath;
  final dynamic syndicateCardPath;
  final String? profileDescription;
  final dynamic reviewCount;
  final dynamic averageRating;
  final num? userTypeId;
  final String? code;
  final bool? isActive;
  final dynamic attachment;
  final dynamic countryDto;
  final dynamic userTypeDto;
  final List<dynamic> previousHistoryDto;
  final dynamic insuranceCompanyDto;
  final List<dynamic> patientRelevantDTo;

  factory Assistant.fromJson(Map<String, dynamic> json){
    return Assistant(
      userId: json["userId"],
      name: json["name"],
      photo: json["photo"],
      userName: json["userName"],
      password: json["password"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
      address: json["address"]  ,
      location: json["location"],
      dob: DateTime.tryParse(json["dob"] ?? ""),
      maritalStatus: json["maritalStatus"],
      insuranceCompanyId: json["insuranceCompanyId"],
      countryId: json["countryId"],
      nationalId: json["nationalId"],
      genderId: json["genderId"],
      specialistId: json["specialistId"],
      experienceYear: json["experienceYear"],
      certificatePath: json["certificatePath"],
      syndicateCardPath: json["syndicateCardPath"],
      profileDescription: json["profileDescription"],
      reviewCount: json["reviewCount"],
      averageRating: json["averageRating"],
      userTypeId: json["userTypeId"],
      code: json["code"],
      isActive: json["isActive"],
      attachment: json["attachment"],
      countryDto: json["countryDto"],
      userTypeDto: json["userTypeDto"],
      previousHistoryDto: json["previousHistoryDto"] == null ? [] : List<dynamic>.from(json["previousHistoryDto"]!.map((x) => x)),
      insuranceCompanyDto: json["insuranceCompanyDto"],
      patientRelevantDTo: json["patientRelevantDTo"] == null ? [] : List<dynamic>.from(json["patientRelevantDTo"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "name": name,
    "photo": photo,
    "userName": userName,
    "password": password,
    "email": email,
    "phoneNumber": phoneNumber,
    "address": address,
    "location": location,
    // "dob": "${dob.year.toString().padLeft(4'0')}-${dob.month.toString().padLeft(2'0')}-${dob.day.toString().padLeft(2'0')}",
    "maritalStatus": maritalStatus,
    "insuranceCompanyId": insuranceCompanyId,
    "countryId": countryId,
    "nationalId": nationalId,
    "genderId": genderId,
    "specialistId": specialistId,
    "experienceYear": experienceYear,
    "certificatePath": certificatePath,
    "syndicateCardPath": syndicateCardPath,
    "profileDescription": profileDescription,
    "reviewCount": reviewCount,
    "averageRating": averageRating,
    "userTypeId": userTypeId,
    "code": code,
    "isActive": isActive,
    "attachment": attachment,
    "countryDto": countryDto,
    "userTypeDto": userTypeDto,
    "previousHistoryDto": previousHistoryDto.map((x) => x).toList(),
    "insuranceCompanyDto": insuranceCompanyDto,
    "patientRelevantDTo": patientRelevantDTo.map((x) => x).toList(),
  };

}


// Address model
class Address {
  final String? street;
  final String? city;
  final String? postalCode;
  final num? countryId;
  final String? country;
  final double? latitude;
  final double? longitude;

  Address({
    required this.street,
    required this.city,
    required this.postalCode,
    required this.countryId,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json['street'] as String?,
    city: json['city'] as String?,
    postalCode: json['postalCode'] as String?,
    countryId: json['countryId'] as num?,
    country: json['country'] as String?,
    latitude: _asDouble(json['latitude']),
    longitude: _asDouble(json['longitude']),
  );

  Map<String, dynamic> toJson() => {
    'street': street,
    'city': city,
    'postalCode': postalCode,
    'countryId': countryId,
    'country': country,
    'latitude': latitude,
    'longitude': longitude,
  };

  Address copyWith({
    String? street,
    String? city,
    String? postalCode,
    num? countryId,
    String? country,
    double? latitude,
    double? longitude,
  }) {
    return Address(
      street: street ?? this.street,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      countryId: countryId ?? this.countryId,
      country: country ?? this.country,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  static double? _asDouble(dynamic v) {
    if (v == null) return null;
    if (v is num) return v.toDouble();
    if (v is String) return double.tryParse(v);
    return null;
  }
}