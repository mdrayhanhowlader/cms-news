// To parse this JSON data, do
//
//     final listStaffModel = listStaffModelFromJson(jsonString);

import 'dart:convert';

import 'staff_local_model.dart';

ListStaffModel listStaffModelFromJson(String str) =>
    ListStaffModel.fromJson(json.decode(str));

String listStaffModelToJson(ListStaffModel data) => json.encode(data.toJson());

class ListStaffModel {
  final String? status;
  final String? message;
  final List<StaffListData>? data;

  ListStaffModel({
    this.status,
    this.message,
    this.data,
  });

  factory ListStaffModel.fromJson(Map<String, dynamic> json) => ListStaffModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<StaffListData>.from(
                json["data"]!.map((x) => StaffListData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class StaffListData {
  final int? id;
  final String? uid;
  final String? name;
  final String? nickName;
  final int? branchId;
  final String? ic;
  final String? email;
  final String? landPhone;
  final String? cellPhone;
  final String? address;
  final String? designation;
  final String? jobDivision;
  final String? jobStatus;
  final String? image;

  StaffListData({
    this.id,
    this.uid,
    this.name,
    this.nickName,
    this.branchId,
    this.ic,
    this.email,
    this.landPhone,
    this.cellPhone,
    this.address,
    this.designation,
    this.jobDivision,
    this.jobStatus,
    this.image,
  });

  factory StaffListData.fromJson(Map<String, dynamic> json) => StaffListData(
        id: json["id"],
        uid: json["uid"],
        name: json["name"],
        nickName: json["nick_name"],
        branchId: json["branch_id"],
        ic: json["ic"],
        email: json["email"],
        landPhone: json["land_phone"],
        cellPhone: json["cell_phone"],
        address: json["address"],
        designation: json["designation"],
        jobDivision: json["job_division"],
        jobStatus: json["job_status"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "name": name,
        "nick_name": nickName,
        "branch_id": branchId,
        "ic": ic,
        "email": email,
        "land_phone": landPhone,
        "cell_phone": cellPhone,
        "address": address,
        "designation": designation,
        "job_division": jobDivision,
        "job_status": jobStatus,
        "image": image,
      };

  StaffModel toLocalObj() {
    return StaffModel(
      this.id,
      uid: this.uid,
      name: this.name,
      nickName: this.nickName,
      branchId: this.branchId,
      ic: this.ic,
      email: this.email,
      landPhone: this.landPhone,
      cellPhone: this.cellPhone,
      address: this.address,
      designation: this.designation,
      jobDivision: this.jobDivision,
      jobStatus: this.jobStatus,
      image: this.image,
    );
  }
}


// StaffListData


