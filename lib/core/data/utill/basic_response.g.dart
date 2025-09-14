// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicResponse<T> _$BasicResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => BasicResponse<T>(
  totalCount: (json['totalCount'] as num?)?.toInt(),
  value: _$nullableGenericFromJson(json['value'], fromJsonT),
  success: json['success'] as bool?,
  error: json['error'] as String?,
  isFailure: json['isFailure'] as bool?,
);

Map<String, dynamic> _$BasicResponseToJson<T>(
  BasicResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'value': _$nullableGenericToJson(instance.value, toJsonT),
  'success': instance.success,
  'error': instance.error,
  'isFailure': instance.isFailure,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
