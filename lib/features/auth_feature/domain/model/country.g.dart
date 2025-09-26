// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
  countryId: (json['countryId'] as num?)?.toInt(),
  country: json['country'] as String?,
  language: json['language'] as String?,
  currency: json['currency'] as String?,
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
  'countryId': instance.countryId,
  'country': instance.country,
  'language': instance.language,
  'currency': instance.currency,
  'isActive': instance.isActive,
};
