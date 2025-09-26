// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'item.g.dart';

@JsonSerializable()
class Item {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;

  Item({
    this.id,
    this.name,
  });

  Item copyWith({
    int? id,
    String? name,
  }) =>
      Item(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
