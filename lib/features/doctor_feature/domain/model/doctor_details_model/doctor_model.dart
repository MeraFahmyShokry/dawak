class DoctorDetailsModel {
  DoctorDetailsModel({
    required this.name,
    required this.description,
    required this.reviewRating,
    required this.location,
    required this.address,
    required this.clinicCount,
    required this.reviewCount,
    required this.experience,
    required this.specialistName,
    required this.imageUrl,
    required this.patientCount,
  });

  final String? name;
  final String? description;
  final num? reviewRating;
  final String? location;
  final Address? address;
  final num? clinicCount;
  final num? reviewCount;
  final num? experience;
  final String? specialistName;
  final String? imageUrl;
  final num? patientCount;

  factory DoctorDetailsModel.fromJson(Map<String, dynamic> json) {
    return DoctorDetailsModel(
      name: json["name"],
      description: json["description"],
      reviewRating: json["reviewRating"],
      location: json["location"],
      address:
          json["address"] == null ? null : Address.fromJson(json["address"]),
      clinicCount: json["clinicCount"],
      reviewCount: json["reviewCount"],
      experience: json["experience"],
      specialistName: json["specialistName"],
      imageUrl: json["imageUrl"],
      patientCount: json["patientCount"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "reviewRating": reviewRating,
        "location": location,
        "address": address?.toJson(),
        "clinicCount": clinicCount,
        "reviewCount": reviewCount,
        "experience": experience,
        "specialistName": specialistName,
        "imageUrl": imageUrl,
        "patientCount": patientCount,
      };
}

class Address {
  Address({
    required this.street,
    required this.city,
    required this.postalCode,
    required this.countryId,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  final String? street;
  final dynamic city;
  final String? postalCode;
  final num? countryId;
  final dynamic country;
  final dynamic latitude;
  final dynamic longitude;

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json["street"],
      city: json["city"],
      postalCode: json["postalCode"],
      countryId: json["countryId"],
      country: json["country"],
      latitude: json["latitude"],
      longitude: json["longitude"],
    );
  }

  Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "postalCode": postalCode,
        "countryId": countryId,
        "country": country,
        "latitude": latitude,
        "longitude": longitude,
      };
}
