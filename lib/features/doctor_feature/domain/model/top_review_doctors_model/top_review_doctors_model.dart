class TopDoctorsReview {
  final String? doctorId;
  final String? doctorName;
  final int? averageRating;
  final int? totalReviews;
  final int? differenceDays;
  final String? reason;
  final DateTime? createdAt;
  final String? imagUrl;
  final int? statusId;
  final String? statusName;

  TopDoctorsReview({
    this.doctorId,
    this.doctorName,
    this.averageRating,
    this.totalReviews,
    this.differenceDays,
    this.reason,
    this.createdAt,
    this.imagUrl,
    this.statusId,
    this.statusName,
  });

  factory TopDoctorsReview.fromJson(Map<String, dynamic> json) {
    return TopDoctorsReview(
      doctorId: json['doctorId'] as String?,
      doctorName: json['doctorName'] as String?,
      averageRating: json['averageRating'] as int?,
      totalReviews: json['totalReviews'] as int?,
      differenceDays: json['differenceDays'] as int?,
      reason: json['reason'] as String?,
      createdAt: json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      imagUrl: json['imagUrl'] as String?,
      statusId: json['statusId'] as int?,
      statusName: json['statusName'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'doctorId': doctorId,
      'doctorName': doctorName,
      'averageRating': averageRating,
      'totalReviews': totalReviews,
      'differenceDays': differenceDays,
      'reason': reason,
      'createdAt': createdAt?.toIso8601String(),
      'imagUrl': imagUrl,
      'statusId': statusId,
      'statusName': statusName,
    };
  }
}