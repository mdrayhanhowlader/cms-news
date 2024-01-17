// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:hive/hive.dart';
import 'dart:convert';

part 'login_model.g.dart';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

@HiveType(typeId: 2)
class LoginModel {
  @HiveField(1)
  String? token;
  @HiveField(2)
  String? encryptedUser;
  @HiveField(3)
  bool? isDefaultPassword;
  @HiveField(4)
  String? passwordExpiredIn;
  @HiveField(5)
  String? serverId;
  @HiveField(6)
  String? userId;
  @HiveField(7)
  int? userSid;
  @HiveField(8)
  String? userName;
  @HiveField(9)
  String? userImage;
  @HiveField(10)
  String? userPhoneNum;
  @HiveField(11)
  String? userIc;
  @HiveField(12)
  String? userEmail;
  @HiveField(13)
  String? userAddr;
  @HiveField(14)
  String? schName;
  @HiveField(15)
  String? schAddr;
  @HiveField(16)
  String? schCoordinate;
  @HiveField(17)
  String? schRadius;
  @HiveField(18)
  String? systemLevel;
  @HiveField(19)
  String? systemAccess;
  @HiveField(20)
  String? systemConfig;
  @HiveField(21)
  String? bosConfig;

  LoginModel({
    this.token,
    this.encryptedUser,
    this.isDefaultPassword,
    this.passwordExpiredIn,
    this.serverId,
    this.userId,
    this.userSid,
    this.userName,
    this.userImage,
    this.userPhoneNum,
    this.userIc,
    this.userEmail,
    this.userAddr,
    this.schName,
    this.schAddr,
    this.schCoordinate,
    this.schRadius,
    this.systemLevel,
    this.systemAccess,
    this.systemConfig,
    this.bosConfig,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        token: json["token"],
        encryptedUser: json["encrypted_user"],
        isDefaultPassword: json["is_default_password"],
        passwordExpiredIn: json["password_expired_in"],
        serverId: json["server_id"],
        userId: json["user_id"],
        userSid: json["user_sid"],
        userName: json["user_name"],
        userImage: json["user_image"],
        userPhoneNum: json["user_phone_num"],
        userIc: json["user_ic"],
        userEmail: json["user_email"],
        userAddr: json["user_addr"],
        schName: json["sch_name"],
        schAddr: json["sch_addr"],
        schCoordinate: json["sch_coordinate"],
        schRadius: json["sch_radius"],
        systemLevel: json["system_level"],
        systemAccess: json["system_access"],
        systemConfig: json["system_config"],
        bosConfig: json["bos_config"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "encrypted_user": encryptedUser,
        "is_default_password": isDefaultPassword,
        "password_expired_in": passwordExpiredIn,
        "server_id": serverId,
        "user_id": userId,
        "user_sid": userSid,
        "user_name": userName,
        "user_image": userImage,
        "user_phone_num": userPhoneNum,
        "user_ic": userIc,
        "user_email": userEmail,
        "user_addr": userAddr,
        "sch_name": schName,
        "sch_addr": schAddr,
        "sch_coordinate": schCoordinate,
        "sch_radius": schRadius,
        "system_level": systemLevel,
        "system_access": systemAccess,
        "system_config": systemConfig,
        "bos_config": bosConfig,
      };
}
