// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserType _$UserTypeFromJson(Map<String, dynamic> json) => UserType(
  userTypeId: (json['userTypeId'] as num?)?.toInt(),
  userType: json['userType'] as String?,
  isActive: json['isActive'] as bool?,
  isSelected: json['isSelected'] as bool?,
  imagePath: json['imagePath'] as String?,
  label: json['label'] as String?,
);

Map<String, dynamic> _$UserTypeToJson(UserType instance) => <String, dynamic>{
  'userTypeId': instance.userTypeId,
  'userType': instance.userType,
  'label': instance.label,
  'isActive': instance.isActive,
  'isSelected': instance.isSelected,
  'imagePath': instance.imagePath,
};
