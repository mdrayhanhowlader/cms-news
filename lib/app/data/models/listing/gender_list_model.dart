// To parse this JSON data, do
//
//     final genderListModel = genderListModelFromJson(jsonString);

import 'dart:convert';

GenderListModel genderListModelFromJson(String str) =>
    GenderListModel.fromJson(json.decode(str));

String genderListModelToJson(GenderListModel data) =>
    json.encode(data.toJson());

class GenderListModel {
  final int? status;
  final String? msg;
  final List<Datum>? data;

  GenderListModel({
    this.status,
    this.msg,
    this.data,
  });

  factory GenderListModel.fromJson(Map<String, dynamic> json) =>
      GenderListModel(
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
  final String? prm;
  final int? val;

  Datum({
    this.prm,
    this.val,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        prm: json["prm"],
        val: json["val"],
      );

  Map<String, dynamic> toJson() => {
        "prm": prm,
        "val": val,
      };
}
