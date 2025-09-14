class DoctorModel {
  DoctorModel({
    required this.id,
    required this.name,
    required this.reviewRating,
    required this.reviewCount,
    required this.clinicCount,
    required this.specialistName,
    required this.address,
    required this.location,
    required this.isAvailable,
    required this.availableIn,
    required this.doctorImage,
  });

  final String? id;
  final String? name;
  final num? reviewRating;
  final num? reviewCount;
  final num? clinicCount;
  final String? specialistName;
  final Address? address;
  final String? location;
  final String? doctorImage;
  final bool? isAvailable;
  final String? availableIn;

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json["id"],
      doctorImage: json["doctorImage"],
      name: json["name"],
      reviewRating: json["reviewRating"],
      reviewCount: json["reviewCount"],
      clinicCount: json["clinicCount"],
      specialistName: json["specialistName"],
      address:
          json["address"] == null ? null : Address.fromJson(json["address"]),
      location: json["location"],
      isAvailable: json["isAvailable"],
      availableIn: json["availableIn"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "doctorImage": doctorImage,
        "reviewRating": reviewRating,
        "reviewCount": reviewCount,
        "clinicCount": clinicCount,
        "specialistName": specialistName,
        "address": address?.toJson(),
        "location": location,
        "isAvailable": isAvailable,
        "availableIn": availableIn,
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
