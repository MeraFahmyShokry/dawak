class PatientRelevantPatientModel {
  PatientRelevantPatientModel({
    required this.id,
    required this.patientId,
    required this.description,
    required this.name,
    required this.dob,
    required this.code,
    required this.isActive,
  });

  final String? id;
  final String? patientId;
  final String? description;
  final String? name;
  final DateTime? dob;
  final String? code;
  final bool? isActive;

  factory PatientRelevantPatientModel.fromJson(Map<String, dynamic> json){
    return PatientRelevantPatientModel(
      id: json["id"],
      patientId: json["patientId"],
      description: json["description"],
      name: json["name"],
      dob: DateTime.tryParse(json["dob"] ?? ""),
      code: json["code"],
      isActive: json["isActive"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "patientId": patientId,
    "description": description,
    "name": name,
    "dob": "${dob}",
    "code": code,
    "isActive": isActive,
  };

}
