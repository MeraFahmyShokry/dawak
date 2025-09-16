// To parse this JSON data, do
//
//     final topDoctorsReview = topDoctorsReviewFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'top_doctors_review.g.dart';
@JsonSerializable()
class TopDoctorsReview {
  @JsonKey(name: "reviewID")
  String? reviewId;
  @JsonKey(name: "doctorId")
  String? doctorId;
  @JsonKey(name: "doctorName")
  String? doctorName;
  @JsonKey(name: "userName")
  String? userName;
  @JsonKey(name: "averageRating")
  int? averageRating;
  @JsonKey(name: "differenceDays")
  int? differenceDays;
  @JsonKey(name: "totalReviews")
  int? totalReviews;
  @JsonKey(name: "reason")
  String? reason;
  @JsonKey(name: "createdAt")
  DateTime? createdAt;
  @JsonKey(name: "imagUrl")
  String? imagUrl;
  @JsonKey(name: "statusId")
  int? statusId;
  @JsonKey(name: "statusName")
  String? statusName;

  TopDoctorsReview({
    this.reviewId,
    this.doctorId,
    this.doctorName,
    this.userName,
    this.averageRating,
    this.differenceDays,
    this.totalReviews,
    this.reason,
    this.createdAt,
    this.imagUrl,
    this.statusId,
    this.statusName,
  });

  TopDoctorsReview copyWith({
    String? reviewId,
    String? doctorId,
    String? doctorName,
    String? userName,
    int? averageRating,
    int? differenceDays,
    int? totalReviews,
    String? reason,
    DateTime? createdAt,
    String? imagUrl,
    int? statusId,
    String? statusName,
  }) =>
      TopDoctorsReview(
        reviewId: reviewId ?? this.reviewId,
        doctorId: doctorId ?? this.doctorId,
        doctorName: doctorName ?? this.doctorName,
        userName: userName ?? this.userName,
        averageRating: averageRating ?? this.averageRating,
        differenceDays: differenceDays ?? this.differenceDays,
        totalReviews: totalReviews ?? this.totalReviews,
        reason: reason ?? this.reason,
        createdAt: createdAt ?? this.createdAt,
        imagUrl: imagUrl ?? this.imagUrl,
        statusId: statusId ?? this.statusId,
        statusName: statusName ?? this.statusName,
      );

  factory TopDoctorsReview.fromJson(Map<String, dynamic> json) => _$TopDoctorsReviewFromJson(json);

  Map<String, dynamic> toJson() => _$TopDoctorsReviewToJson(this);
}
