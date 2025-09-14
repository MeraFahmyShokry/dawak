// To parse this JSON data, do
//
//     final basicResponse = basicResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'basic_response.g.dart';

BasicResponse<T> basicResponseFromJson<T>(
    String str,
    T Function(Object? json) fromJsonT,
    ) =>
    BasicResponse<T>.fromJson(json.decode(str), fromJsonT);

String basicResponseToJson<T>(
    BasicResponse<T> data,
    Object? Function(T value) toJsonT,
    ) =>
    json.encode(data.toJson(toJsonT));


@JsonSerializable(genericArgumentFactories: true)
class BasicResponse <T>{
  @JsonKey(name: "totalCount")
  int? totalCount;
  @JsonKey(name: "value")
  T? value;
  @JsonKey(name: "success")
  bool? success;
  @JsonKey(name: "error")
  String? error;
  @JsonKey(name: "isFailure")
  bool? isFailure;

  BasicResponse({
    this.totalCount,
    this.value,
    this.success,
    this.error,
    this.isFailure,
  });

  BasicResponse<T> copyWith({
    int? totalCount,
    T? value,
    bool? success,
    String? error,
    bool? isFailure,
  }) =>
      BasicResponse<T>(
        totalCount: totalCount ?? this.totalCount,
        value: value ?? this.value,
        success: success ?? this.success,
        error: error ?? this.error,
        isFailure: isFailure ?? this.isFailure,
      );

  factory BasicResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) =>
      _$BasicResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BasicResponseToJson(this, toJsonT);
}
