// To parse this JSON data, do
//
//     final loginPojo = loginPojoFromJson(jsonString);

import 'dart:convert';

LoginPojo loginPojoFromJson(String str) => LoginPojo.fromJson(json.decode(str));

String loginPojoToJson(LoginPojo data) => json.encode(data.toJson());

class LoginPojo {
  int code;
  String message;

  LoginPojo({
    this.code,
    this.message,
  });

  factory LoginPojo.fromJson(Map<String, dynamic> json) => LoginPojo(
    code: json["code"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
  };
}
