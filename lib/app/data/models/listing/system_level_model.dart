// To parse this JSON data, do
//
//     final systemLevelModel = systemLevelModelFromJson(jsonString);

import 'dart:convert';

SystemLevelModel systemLevelModelFromJson(String str) =>
    SystemLevelModel.fromJson(json.decode(str));

String systemLevelModelToJson(SystemLevelModel data) =>
    json.encode(data.toJson());

class SystemLevelModel {
  final int? status;
  final String? msg;
  final List<Datum>? data;

  SystemLevelModel({
    this.status,
    this.msg,
    this.data,
  });

  factory SystemLevelModel.fromJson(Map<String, dynamic> json) =>
      SystemLevelModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  final int? id;
  final String? prm;
  final String? code;

  Datum({
    this.id,
    this.prm,
    this.code,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        prm: json["prm"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "prm": prm,
        "code": code,
      };
}
