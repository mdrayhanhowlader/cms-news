import 'package:realm/realm.dart';

part 'staff_local_model.g.dart';

@RealmModel()
class _StaffModel {
  @PrimaryKey()
  late int? id;
  late String? uid;
  late String? name;
  late String? nickName;
  late int? branchId;
  late String? ic;
  late String? email;
  late String? landPhone;
  late String? cellPhone;
  late String? address;
  late String? designation;
  late String? jobDivision;
  late String? jobStatus;
  late String? image;
}
