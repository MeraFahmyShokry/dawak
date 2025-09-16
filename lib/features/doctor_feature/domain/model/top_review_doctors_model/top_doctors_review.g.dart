// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_doctors_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopDoctorsReview _$TopDoctorsReviewFromJson(Map<String, dynamic> json) =>
    TopDoctorsReview(
      reviewId: json['reviewID'] as String?,
      doctorId: json['doctorId'] as String?,
      doctorName: json['doctorName'] as String?,
      userName: json['userName'] as String?,
      averageRating: (json['averageRating'] as num?)?.toInt(),
      differenceDays: (json['differenceDays'] as num?)?.toInt(),
      totalReviews: (json['totalReviews'] as num?)?.toInt(),
      reason: json['reason'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      imagUrl: json['imagUrl'] as String?,
      statusId: (json['statusId'] as num?)?.toInt(),
      statusName: json['statusName'] as String?,
    );

Map<String, dynamic> _$TopDoctorsReviewToJson(TopDoctorsReview instance) =>
    <String, dynamic>{
      'reviewID': instance.reviewId,
      'doctorId': instance.doctorId,
      'doctorName': instance.doctorName,
      'userName': instance.userName,
      'averageRating': instance.averageRating,
      'differenceDays': instance.differenceDays,
      'totalReviews': instance.totalReviews,
      'reason': instance.reason,
      'createdAt': instance.createdAt?.toIso8601String(),
      'imagUrl': instance.imagUrl,
      'statusId': instance.statusId,
      'statusName': instance.statusName,
    };
