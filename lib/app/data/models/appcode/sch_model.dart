import 'dart:convert';
import 'package:hive/hive.dart';

part 'sch_model.g.dart';

List<SchModel> schModelFromJson(String str) =>
    List<SchModel>.from(json.decode(str).map((x) => SchModel.fromJson(x)));

String schModelToJson(List<SchModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 0)
class SchModel extends HiveObject {
  @HiveField(1)
  final String? encryptedKey;
  @HiveField(2)
  final String? serverId;
  @HiveField(3)
  final String? sid;
  @HiveField(4)
  final String? clientAppname;
  @HiveField(5)
  final String? clientAppengine;
  @HiveField(6)
  final String? clientTel;
  @HiveField(7)
  final String? clientRegno;
  @HiveField(8)
  final String? clientAddress;
  @HiveField(9)
  final String? clientPostcode;
  @HiveField(10)
  final String? clientDistrict;
  @HiveField(11)
  final String? clientState;
  @HiveField(12)
  final String? customer;
  @HiveField(13)
  final String? clientLogo;
  @HiveField(14)
  final String? appConfig;
  @HiveField(15)
  final String? url;
  @HiveField(16)
  final String? username;
  @HiveField(17)
  final String? password;

  SchModel({
    this.encryptedKey,
    this.serverId,
    this.sid,
    this.clientAppname,
    this.clientAppengine,
    this.clientTel,
    this.clientRegno,
    this.clientAddress,
    this.clientPostcode,
    this.clientDistrict,
    this.clientState,
    this.customer,
    this.clientLogo,
    this.appConfig,
    this.url,
    this.username,
    this.password,
  });

  factory SchModel.fromJson(Map<String, dynamic> json) => SchModel(
        encryptedKey: json["encrypted_key"],
        serverId: json["server_id"],
        sid: json["sid"],
        clientAppname: json["client_appname"],
        clientAppengine: json["client_appengine"],
        clientTel: json["client_tel"],
        clientRegno: json["client_regno"],
        clientAddress: json["client_address"],
        clientPostcode: json["client_postcode"],
        clientDistrict: json["client_district"],
        clientState: json["client_state"],
        customer: json["customer"],
        clientLogo: json["client_logo"],
        appConfig: json["app_config"],
        url: json["url"],
        username: "",
        password: "",
      );

  Map<String, dynamic> toJson() => {
        "encrypted_key": encryptedKey,
        "server_id": serverId,
        "sid": sid,
        "client_appname": clientAppname,
        "client_appengine": clientAppengine,
        "client_tel": clientTel,
        "client_regno": clientRegno,
        "client_address": clientAddress,
        "client_postcode": clientPostcode,
        "client_district": clientDistrict,
        "client_state": clientState,
        "customer": customer,
        "client_logo": clientLogo,
        "app_config": appConfig,
        "url": url,
        "username": username,
        "password": password,
      };
}
