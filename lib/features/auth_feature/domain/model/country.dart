// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'country.g.dart';

Country countryFromJson(String str) => Country.fromJson(json.decode(str));

String countryToJson(Country data) => json.encode(data.toJson());

@JsonSerializable()
class Country {
  @JsonKey(name: "countryId")
  int? countryId;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "language")
  String? language;
  @JsonKey(name: "currency")
  String? currency;
  @JsonKey(name: "isActive")
  bool? isActive;

  Country({
    this.countryId,
    this.country,
    this.language,
    this.currency,
    this.isActive,
  });

  Country copyWith({
    int? countryId,
    String? country,
    String? language,
    String? currency,
    bool? isActive,
  }) =>
      Country(
        countryId: countryId ?? this.countryId,
        country: country ?? this.country,
        language: language ?? this.language,
        currency: currency ?? this.currency,
        isActive: isActive ?? this.isActive,
      );

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
