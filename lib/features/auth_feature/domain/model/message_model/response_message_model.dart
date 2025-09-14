import 'package:json_annotation/json_annotation.dart';
 

class MessageModel {
  MessageModel({
    required this.status,
    required this.message,
    required this.access,
    required this.errors,
  });
 
  final String? status;
  final String? message;
  final String? access;
  final MessageErrorsModel? errors;

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      status: json["status"],
      message: json["message"],
      access: json["access"],
      errors: json["errors"] == null
          ? null
          : MessageErrorsModel.fromJson(json["errors"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "access": access,
        "errors": errors?.toJson(),
      };
}

class MessageErrorsModel {
  MessageErrorsModel({
    required this.error,
  });

  final List<String> error;

  factory MessageErrorsModel.fromJson(Map<String, dynamic> json) {
    return MessageErrorsModel(
      error: json["error"] == null
          ? []
          : List<String>.from(json["error"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "error": error.map((x) => x).toList(),
      };
}
