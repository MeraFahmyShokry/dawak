// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsuranceCompany _$InsuranceCompanyFromJson(Map<String, dynamic> json) =>
    InsuranceCompany(
      insuranceCompanyId: (json['insuranceCompanyId'] as num?)?.toInt(),
      insuranceCompany: json['insuranceCompany'] as String?,
      coveredPercentage: (json['coveredPercentage'] as num?)?.toDouble(),
      isCovered: json['isCovered'] as bool?,
      isActive: json['isActive'] as bool?,
      countryId: (json['countryId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InsuranceCompanyToJson(InsuranceCompany instance) =>
    <String, dynamic>{
      'insuranceCompanyId': instance.insuranceCompanyId,
      'insuranceCompany': instance.insuranceCompany,
      'coveredPercentage': instance.coveredPercentage,
      'isCovered': instance.isCovered,
      'isActive': instance.isActive,
      'countryId': instance.countryId,
    };
