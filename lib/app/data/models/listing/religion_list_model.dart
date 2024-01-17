// To parse this JSON data, do
//
//     final religionListModel = religionListModelFromJson(jsonString);

import 'dart:convert';

ReligionListModel religionListModelFromJson(String str) =>
    ReligionListModel.fromJson(json.decode(str));

String religionListModelToJson(ReligionListModel data) =>
    json.encode(data.toJson());

class ReligionListModel {
  final int? status;
  final String? msg;
  final List<Datum>? data;

  ReligionListModel({
    this.status,
    this.msg,
    this.data,
  });

  factory ReligionListModel.fromJson(Map<String, dynamic> json) =>
      ReligionListModel(
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
  final dynamic code;

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
