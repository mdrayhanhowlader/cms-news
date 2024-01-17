// To parse this JSON data, do
//
//     final statusListModel = statusListModelFromJson(jsonString);

import 'dart:convert';

StatusListModel statusListModelFromJson(String str) =>
    StatusListModel.fromJson(json.decode(str));

String statusListModelToJson(StatusListModel data) =>
    json.encode(data.toJson());

class StatusListModel {
  final int? status;
  final String? msg;
  final List<StatusListData>? data;

  StatusListModel({
    this.status,
    this.msg,
    this.data,
  });

  factory StatusListModel.fromJson(Map<String, dynamic> json) =>
      StatusListModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<StatusListData>.from(
                json["data"]!.map((x) => StatusListData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class StatusListData {
  final String? prm;
  final int? val;

  StatusListData({
    this.prm,
    this.val,
  });

  factory StatusListData.fromJson(Map<String, dynamic> json) => StatusListData(
        prm: json["prm"],
        val: json["val"],
      );

  Map<String, dynamic> toJson() => {
        "prm": prm,
        "val": val,
      };
}
