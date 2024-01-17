// To parse this JSON data, do
//
//     final branchListModel = branchListModelFromJson(jsonString);

import 'dart:convert';

import 'branch_local_model.dart';

BranchListModel branchListModelFromJson(String str) =>
    BranchListModel.fromJson(json.decode(str));

String branchListModelToJson(BranchListModel data) =>
    json.encode(data.toJson());

class BranchListModel {
  final String? status;
  final String? message;
  final List<Datum>? data;

  BranchListModel({
    this.status,
    this.message,
    this.data,
  });

  factory BranchListModel.fromJson(Map<String, dynamic> json) =>
      BranchListModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  final int? branchId;
  final String? name;

  Datum({
    this.branchId,
    this.name,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        branchId: json["branch_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "branch_id": branchId,
        "name": name,
      };

  BranchModel toLocalObj() {
    return BranchModel(
      this.branchId,
      name: this.name,
    );
  }
}
