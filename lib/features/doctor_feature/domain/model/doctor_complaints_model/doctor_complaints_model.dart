class DoctorComplaintsModel {
  DoctorComplaintsModel({
    required this.complainId,
    required this.doctorId,
    required this.doctorName,
    required this.userName,
    required this.differenceDays,
    required this.totalComplains,
    required this.reason,
    required this.createdAt,
    required this.imagUrl,
    required this.statusId,
    required this.statusName,
  });

  final String? complainId;
  final String? doctorId;
  final String? doctorName;
  final String? userName;
  final num? differenceDays;
  final num? totalComplains;
  final String? reason;
  final DateTime? createdAt;
  final String? imagUrl;
  final num? statusId;
  final String? statusName;

  factory DoctorComplaintsModel.fromJson(Map<String, dynamic> json){
    return DoctorComplaintsModel(
      complainId: json["complainId"],
      doctorId: json["doctorId"],
      doctorName: json["doctorName"],
      userName: json["userName"],
      differenceDays: json["differenceDays"],
      totalComplains: json["totalComplains"],
      reason: json["reason"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      imagUrl: json["imagUrl"],
      statusId: json["statusId"],
      statusName: json["statusName"],
    );
  }

  Map<String, dynamic> toJson() => {
    "complainId": complainId,
    "doctorId": doctorId,
    "doctorName": doctorName,
    "userName": userName,
    "differenceDays": differenceDays,
    "totalComplains": totalComplains,
    "reason": reason,
    "createdAt": createdAt?.toIso8601String(),
    "imagUrl": imagUrl,
    "statusId": statusId,
    "statusName": statusName,
  };

}
