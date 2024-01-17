// To parse this JSON data, do
//
//     final qualificationListModel = qualificationListModelFromJson(jsonString);

import 'dart:convert';

QualificationListModel qualificationListModelFromJson(String str) =>
    QualificationListModel.fromJson(json.decode(str));

String qualificationListModelToJson(QualificationListModel data) =>
    json.encode(data.toJson());

class QualificationListModel {
  final int? status;
  final String? msg;
  final List<Datum>? data;

  QualificationListModel({
    this.status,
    this.msg,
    this.data,
  });

  factory QualificationListModel.fromJson(Map<String, dynamic> json) =>
      QualificationListModel(
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
  final String? grp;

  Datum({
    this.id,
    this.prm,
    this.grp,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        prm: json["prm"],
        grp: json["grp"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "prm": prm,
        "grp": grp,
      };
}
