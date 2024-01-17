// To parse this JSON data, do
//
//     final nationalityListModel = nationalityListModelFromJson(jsonString);

import 'dart:convert';

NationalityListModel nationalityListModelFromJson(String str) =>
    NationalityListModel.fromJson(json.decode(str));

String nationalityListModelToJson(NationalityListModel data) =>
    json.encode(data.toJson());

class NationalityListModel {
  final int? status;
  final String? msg;
  final List<Datum>? data;

  NationalityListModel({
    this.status,
    this.msg,
    this.data,
  });

  factory NationalityListModel.fromJson(Map<String, dynamic> json) =>
      NationalityListModel(
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

  Datum({
    this.id,
    this.prm,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        prm: json["prm"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "prm": prm,
      };
}
