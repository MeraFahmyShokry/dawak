class UserProfileDetails {
  UserProfileDetails({
    required this.id,
    required this.user,
    required this.serialNumberEmail,
    required this.delegateId,
    required this.mobileNumber,
    required this.address,
    required this.profileImage,
    required this.supervisor,
    required this.department,
    required this.profileType,
    required this.company,
    required this.workLocation,
    required this.schedules,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final User? user;
  final String? serialNumberEmail;
  final String? delegateId;
  final String? mobileNumber;
  final String? address;
  final String? profileImage;
  final Supervisor? supervisor;
  final Department? department;
  final String? profileType;
  final Company? company;
  final WorkLocation? workLocation;
  final List<ScheduleModel> schedules;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory UserProfileDetails.fromJson(Map<String, dynamic> json) {
    return UserProfileDetails(
      id: json["id"],
      user: json["user"] == null ? null : User.fromJson(json["user"]),
      serialNumberEmail: json["id_number"],
      delegateId: json["delegate_id"],
      mobileNumber: json["mobile_number"],
      address: json["address"],
      profileImage: json["profile_image"],
      supervisor: json["supervisor"] == null
          ? null
          : Supervisor.fromJson(json["supervisor"]),
      department: json["department"] == null
          ? null
          : Department.fromJson(json["department"]),
      profileType: json["profile_type"],
      company:
          json["company"] == null ? null : Company.fromJson(json["company"]),
      workLocation: json["work_location"] == null
          ? null
          : WorkLocation.fromJson(json["work_location"]),
      schedules: json["schedules"] == null
          ? []
          : List<ScheduleModel>.from(
              json["schedules"]!.map((x) => ScheduleModel.fromJson(x))),
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user?.toJson(),
        "id_number": serialNumberEmail,
        "delegate_id": delegateId,
        "mobile_number": mobileNumber,
        "address": address,
        "profile_image": profileImage,
        "supervisor": supervisor?.toJson(),
        "department": department?.toJson(),
        "profile_type": profileType,
        "company": company?.toJson(),
        "work_location": workLocation?.toJson(),
        "schedules": schedules.map((x) => x?.toJson()).toList(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Company {
  Company({
    required this.id,
    required this.name,
    required this.nameAr,
    required this.slug,
    required this.description,
    required this.descriptionAr,
    required this.logo,
    required this.favicon,
    required this.primaryColor,
    required this.secondaryColor,
    required this.accentColor,
    required this.email,
    required this.phoneNumber,
    required this.website,
    required this.address,
    required this.addressAr,
    required this.city,
    required this.country,
    required this.postalCode,
    required this.facebook,
    required this.twitter,
    required this.instagram,
    required this.linkedin,
    required this.registrationNumber,
    required this.taxNumber,
    required this.foundingDate,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final String? name;
  final String? nameAr;
  final String? slug;
  final String? description;
  final String? descriptionAr;
  final String? logo;
  final String? favicon;
  final String? primaryColor;
  final String? secondaryColor;
  final String? accentColor;
  final String? email;
  final String? phoneNumber;
  final String? website;
  final String? address;
  final String? addressAr;
  final String? city;
  final String? country;
  final String? postalCode;
  final String? facebook;
  final String? twitter;
  final String? instagram;
  final String? linkedin;
  final String? registrationNumber;
  final String? taxNumber;
  final DateTime? foundingDate;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json["id"],
      name: json["name"],
      nameAr: json["name_ar"],
      slug: json["slug"],
      description: json["description"],
      descriptionAr: json["description_ar"],
      logo: json["logo"],
      favicon: json["favicon"],
      primaryColor: json["primary_color"],
      secondaryColor: json["secondary_color"],
      accentColor: json["accent_color"],
      email: json["email"],
      phoneNumber: json["phone_number"],
      website: json["website"],
      address: json["address"],
      addressAr: json["address_ar"],
      city: json["city"],
      country: json["country"],
      postalCode: json["postal_code"],
      facebook: json["facebook"],
      twitter: json["twitter"],
      instagram: json["instagram"],
      linkedin: json["linkedin"],
      registrationNumber: json["registration_number"],
      taxNumber: json["tax_number"],
      foundingDate: DateTime.tryParse(json["founding_date"] ?? ""),
      isActive: json["is_active"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "name_ar": nameAr,
        "slug": slug,
        "description": description,
        "description_ar": descriptionAr,
        "logo": logo,
        "favicon": favicon,
        "primary_color": primaryColor,
        "secondary_color": secondaryColor,
        "accent_color": accentColor,
        "email": email,
        "phone_number": phoneNumber,
        "website": website,
        "address": address,
        "address_ar": addressAr,
        "city": city,
        "country": country,
        "postal_code": postalCode,
        "facebook": facebook,
        "twitter": twitter,
        "instagram": instagram,
        "linkedin": linkedin,
        "registration_number": registrationNumber,
        "tax_number": taxNumber,
        "founding_date": foundingDate?.toIso8601String(),
        "is_active": isActive,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Department {
  Department({
    required this.id,
    required this.name,
    required this.description,
  });

  final int? id;
  final String? name;
  final String? description;

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json["id"],
      name: json["name"],
      description: json["description"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
      };
}

class ScheduleModel {
  ScheduleModel({
    required this.id,
    required this.dayOfWeek,
    required this.dayName,
    required this.startTime,
    required this.endTime,
    required this.isHoliday,
    required this.isAvailable,
    required this.createdAt,
    required this.updatedAt,
    required this.profile,
  });

  final int? id;
  final num? dayOfWeek;
  final String? dayName;
  final String? startTime;
  final String? endTime;
  final bool? isHoliday;
  final bool? isAvailable;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final num? profile;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) {
    return ScheduleModel(
      id: json["id"],
      dayOfWeek: json["day_of_week"],
      dayName: json["day_name"],
      startTime: json["start_time"],
      endTime: json["end_time"],
      isHoliday: json["is_holiday"],
      isAvailable: json["is_available"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      profile: json["Profile"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "day_of_week": dayOfWeek,
        "day_name": dayName,
        "start_time": startTime,
        "end_time": endTime,
        "is_holiday": isHoliday,
        "is_available": isAvailable,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "Profile": profile,
      };
}

class Supervisor {
  Supervisor({
    required this.id,
    required this.user,
    required this.serialNumberEmail,
  });

  final int? id;
  final User? user;
  final String? serialNumberEmail;

  factory Supervisor.fromJson(Map<String, dynamic> json) {
    return Supervisor(
      id: json["id"],
      user: json["user"] == null ? null : User.fromJson(json["user"]),
      serialNumberEmail: json["id_number"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user?.toJson(),
        "id_number": serialNumberEmail,
      };
}

class User {
  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      username: json["username"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      email: json["email"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
      };
}

class WorkLocation {
  WorkLocation({
    required this.id,
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.radius,
    required this.isActive,
    required this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final String? name;
  final String? address;
  final String? latitude;
  final String? longitude;
  final num? radius;
  final bool? isActive;
  final String? notes;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory WorkLocation.fromJson(Map<String, dynamic> json) {
    return WorkLocation(
      id: json["id"],
      name: json["name"],
      address: json["address"],
      latitude: json["latitude"],
      longitude: json["longitude"],
      radius: json["radius"],
      isActive: json["is_active"],
      notes: json["notes"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "radius": radius,
        "is_active": isActive,
        "notes": notes,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
