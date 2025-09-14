import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: true)
class BaseResponseModel<T> {
  @JsonKey(name: 'value')
  T? value;
  @JsonKey(name: 'data')
  T? data;
  String? previous;
  String? next;
  String? access;
  String? message;
  dynamic? status;
  int? count;
  int? totalCount;

  BaseResponseModel(this.value,
      [this.previous,
      this.next,
      this.count,
      this.totalCount,
      this.message,
      this.status,
      this.access]);

  factory BaseResponseModel.fromJson(json, T Function(Object? json) fromJsonT) {
    return _$BaseResponseModelFromJson(json, fromJsonT);
  }
}

enum SuccessDataKeyEnum {
  value,
  data,
}
