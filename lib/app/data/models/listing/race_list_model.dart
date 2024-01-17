// To parse this JSON data, do
//
//     final raceListModel = raceListModelFromJson(jsonString);

import 'dart:convert';

RaceListModel raceListModelFromJson(String str) =>
    RaceListModel.fromJson(json.decode(str));

String raceListModelToJson(RaceListModel data) => json.encode(data.toJson());

class RaceListModel {
  final int? status;
  final String? msg;
  final List<Datum>? data;

  RaceListModel({
    this.status,
    this.msg,
    this.data,
  });

  factory RaceListModel.fromJson(Map<String, dynamic> json) => RaceListModel(
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
