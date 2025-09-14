class UserModel {
  UserModel({
    this.success,
    this.error,
    this.rememberMe,
    this.password,
    this.email,
    this.auth,
    this.id,
    this.userName,
    this.token,
  });

  final bool? success;
  final dynamic error;
  String? password;
  String? email;
  bool? auth;
  bool? rememberMe;

  // الحقول الجديدة من الـ response
  String? id;
  String? userName;
  String? token;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      success: json["success"],
      error: json["error"],
      rememberMe: json['rememberMe'],
      password: json['password'],
      email: json['email'],
      auth: json['auth'],
      id: json['id'],
      userName: json['userName'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() => {
    "success": success,
    "error": error,
    "rememberMe": rememberMe,
    "password": password,
    "email": email,
    "auth": auth,
    "id": id,
    "userName": userName,
    "token": token,
  };
}
