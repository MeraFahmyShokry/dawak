// To parse this JSON data, do
//
//     final insuranceCompany = insuranceCompanyFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'insurance_company.g.dart';

InsuranceCompany insuranceCompanyFromJson(String str) => InsuranceCompany.fromJson(json.decode(str));

String insuranceCompanyToJson(InsuranceCompany data) => json.encode(data.toJson());

@JsonSerializable()
class InsuranceCompany {
  @JsonKey(name: "insuranceCompanyId")
  int? insuranceCompanyId;
  @JsonKey(name: "insuranceCompany")
  String? insuranceCompany;
  @JsonKey(name: "coveredPercentage")
  double? coveredPercentage;
  @JsonKey(name: "isCovered")
  bool? isCovered;
  @JsonKey(name: "isActive")
  bool? isActive;
  @JsonKey(name: "countryId")
  int? countryId;

  InsuranceCompany({
    this.insuranceCompanyId,
    this.insuranceCompany,
    this.coveredPercentage,
    this.isCovered,
    this.isActive,
    this.countryId,
  });

  InsuranceCompany copyWith({
    int? insuranceCompanyId,
    String? insuranceCompany,
    double? coveredPercentage,
    bool? isCovered,
    bool? isActive,
    int? countryId,
  }) =>
      InsuranceCompany(
        insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId,
        insuranceCompany: insuranceCompany ?? this.insuranceCompany,
        coveredPercentage: coveredPercentage ?? this.coveredPercentage,
        isCovered: isCovered ?? this.isCovered,
        isActive: isActive ?? this.isActive,
        countryId: countryId ?? this.countryId,
      );

  factory InsuranceCompany.fromJson(Map<String, dynamic> json) => _$InsuranceCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$InsuranceCompanyToJson(this);
}
