// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => BaseResponseModel<T>(
  _$nullableGenericFromJson(json['value'], fromJsonT),
  json['previous'] as String?,
  json['next'] as String?,
  (json['count'] as num?)?.toInt(),
  (json['totalCount'] as num?)?.toInt(),
  json['message'] as String?,
  json['status'],
  json['access'] as String?,
)..data = _$nullableGenericFromJson(json['data'], fromJsonT);

Map<String, dynamic> _$BaseResponseModelToJson<T>(
  BaseResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'value': _$nullableGenericToJson(instance.value, toJsonT),
  'data': _$nullableGenericToJson(instance.data, toJsonT),
  'previous': instance.previous,
  'next': instance.next,
  'access': instance.access,
  'message': instance.message,
  'status': instance.status,
  'count': instance.count,
  'totalCount': instance.totalCount,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
