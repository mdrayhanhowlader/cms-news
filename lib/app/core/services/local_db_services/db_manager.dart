import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:realm/realm.dart';
import '../../../data/models/listing/branch_local_model.dart';
import '../../../data/models/staff_profile_models/staff_local_model.dart';

class DBManager extends GetxController {
  var config = Configuration.local([
    StaffModel.schema,
    BranchModel.schema,
  ], schemaVersion: 0);

  late Realm realm;
  // final localDB = Get.find<LocalDBService>();

  @override
  void onInit() {
    super.onInit();
    realm = Realm(config);
  }

  @override
  void onClose() {
    super.onClose();
    realm.close();
  }

//-------------------------STAFF-----------------------------------

  void clearStaff() {
    print('xxx clearStaff');
    realm.write(() {
      final characters = realm.all<StaffModel>();
      realm.deleteMany(characters);
    });
  }

  void addStaff(StaffModel user) {
    print('xxx addStaff');
    realm.write(() {
      realm.add(user);
    });
  }

  void addStaffArr(List<StaffModel> user) {
    print('xxx addStaffArr');
    clearStaff();
    realm.write(() {
      realm.addAll(user);
    });
  }

  RealmResults<StaffModel> filterStaff(String key) {
    print('xxx filterStaff $key ');
    return realm
        .all<StaffModel>()
        .query("name CONTAINS[c] '${key}' || ic CONTAINS[c] '${key}'");
  }

  RealmResults<StaffModel> filterStaffByBranch(int key) {
    print('xxx filterStaffByBranch $key ');
    if (key == 9999) {
      return realm.all<StaffModel>();
    } else {
      return realm.all<StaffModel>().query("branchId == '${key}'");
    }
  }

  RealmResults<StaffModel> getAllStaff() {
    print('xxx getAllStaff');
    return realm.all<StaffModel>();
  }

//-------------------------BRANCH-----------------------------------
  void clearBranch() {
    print('xxx clearBranch');
    realm.write(() {
      final characters = realm.all<BranchModel>();
      realm.deleteMany(characters);
    });
  }

  void addBranchArr(List<BranchModel> user) {
    print('xxx addBranchArr');
    clearBranch();
    realm.write(() {
      realm.addAll(user);
    });
  }

  RealmResults<BranchModel> getAllBranch() {
    print('xxx getAllBranch');
    return realm.all<BranchModel>();
  }

  RealmResults<BranchModel> getCurrentBranch(String branchId) {
    print('xxx getCurrentBranch');
    return realm.all<BranchModel>().query("branchId == '${branchId}'");
  }
}
