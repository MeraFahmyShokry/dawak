// To parse this JSON data, do
//
//     final userType = userTypeFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_type.g.dart';

List<UserType> userTypeFromJson(String str) => List<UserType>.from(json.decode(str).map((x) => UserType.fromJson(x)));

String userTypeToJson(List<UserType> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class UserType {
  @JsonKey(name: "userTypeId")
  int? userTypeId;
  @JsonKey(name: "userType")
  String? userType;
  @JsonKey(name: "label")
  String? label;
  @JsonKey(name: "isActive")
  bool? isActive;
  @JsonKey(name: "isSelected")
  bool? isSelected;
  @JsonKey(name: "imagePath")
  String? imagePath;

  UserType({
    this.userTypeId,
    this.userType,
    this.isActive,
    this.isSelected,
    this.imagePath,
    this.label
  });

  UserType copyWith({
    int? userTypeId,
    String? userType,
    bool? isActive,
    bool? isSelected,
    String? imagePath,
    String? label,
  }) =>
      UserType(
        userTypeId: userTypeId ?? this.userTypeId,
        userType: userType ?? this.userType,
        isActive: isActive ?? this.isActive,
        isSelected: isSelected ?? this.isSelected,
        imagePath: imagePath ?? this.imagePath,
        label: label ?? this.label,
      );

  factory UserType.fromJson(Map<String, dynamic> json) => _$UserTypeFromJson(json);

  Map<String, dynamic> toJson() => _$UserTypeToJson(this);
}
