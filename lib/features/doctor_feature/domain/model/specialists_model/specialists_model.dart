class SpecialistsModel {
  SpecialistsModel({
    required this.id,
    required this.specialistName,
    required this.translationValue,
    required this.description,
    required this.specialistImagePath,
    required this.specialistImageUrl,
    required this.languageId,
  });

  final int? id;
  final String? specialistName;
  final String? translationValue;
  final String? description;
  final dynamic specialistImagePath;
  final String? specialistImageUrl;
  final num? languageId;

  factory SpecialistsModel.fromJson(Map<String, dynamic> json){
    return SpecialistsModel(
      id: json["id"],
      specialistName: json["specialistName"],
      translationValue: json["translationValue"],
      description: json["description"],
      specialistImagePath: json["specialistImagePath"],
      specialistImageUrl: json["specialistImageUrl"],
      languageId: json["languageId"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "specialistName": specialistName,
    "translationValue": translationValue,
    "description": description,
    "specialistImagePath": specialistImagePath,
    "specialistImageUrl": specialistImageUrl,
    "languageId": languageId,
  };

}
