import 'dart:convert';
import 'package:cms_maahadtahfizaddin/app/core/widgets/common_widget.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../../../data/constants/constant.dart';
import '../../../data/constants/local_db_constant.dart';
// import '../../../data/models/auth/appcode_model.dart';
// import '../../../data/models/auth/login_model.dart';
// import '../../../data/models/auth/selectuser_model.dart';
import '../../../data/models/appcode/appcode_model.dart';
import '../../../data/models/appcode/sch_model.dart';
import '../../../data/models/auth/login_model.dart';

class LocalDBService extends GetxService {
  var is_android = '';
  @override
  void onInit() {
    super.onInit();
    // initService();
  }

  Future<LocalDBService> initService() async {
    await Hive.openBox(ConstantValue.dbName);
    await Hive.openBox(ConstantValue.sysDbName);
    await Hive.openBox(ConstantValue.schDbName);

    if (Hive.box(ConstantValue.dbName).isEmpty) {
      Hive.box(ConstantValue.dbName).put(DBConstant.KEY_IS_FIRST_TIME, true);
      Hive.box(ConstantValue.dbName).put(DBConstant.KEY_IS_LOGGED_IN, false);
    }

    if (Hive.box(ConstantValue.schDbName).isEmpty) {
      //Hive.box(ConstantValue.schDbName).put(DBConstant.KEY_IS_FIRST_TIME, true);
    }
    if (getFCMToken().isEmpty) {
      final fcmToken = await FirebaseMessaging.instance.getToken();
      // final fcmToken = "hardcodedfirebasedariweb";
      saveFirebaseToken(fcmToken);
      print('xxxx Firebase Token Saved');
    }
    print('xxxx LOCAL DB INITIALIZED');
    return this;
  }

  void saveFirebaseToken(String? token) {
    Hive.box(ConstantValue.sysDbName).put(DBConstant.KEY_FIREBASE_TOKEN, token);
    return;
  }

  String getFCMToken() {
    return Hive.box(ConstantValue.sysDbName)
        .get(DBConstant.KEY_FIREBASE_TOKEN, defaultValue: "");
  }

  void setIsFirstTime(bool val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_IS_FIRST_TIME, val);
    return;
  }

  void setIsLoggedIn(bool val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_IS_LOGGED_IN, val);
    return;
  }

  void setUsername(String val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_USERNAME, val);
    return;
  }

  void setUid(String val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_UID, val);
    return;
  }

  String getToken() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_TOKEN, defaultValue: "");
  }

  String getUsername() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_USERNAME, defaultValue: "");
  }

  String getUid() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_UID, defaultValue: "");
  }

  bool isFirstTime() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_IS_FIRST_TIME, defaultValue: true);
  }

  bool isLoggedIn() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_IS_LOGGED_IN, defaultValue: false);
  }

  void setToken(String token) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_TOKEN, token);
    return;
  }

  bool isDarkMode() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_DARK_MODE, defaultValue: false);
  }

  void setDarkMode(bool isDark) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_DARK_MODE, isDark);
    return;
  }

  String getLanguage() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_LANGUAGE, defaultValue: 'English');
  }

  void setLanguage(String lang) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_LANGUAGE, lang);
    return;
  }

  Future<void> clearDB() async {
    await Hive.box(ConstantValue.dbName).clear();
  }

  String getIsAndroid() {
    return is_android;
  }

  Future<void> saveSchList(SchModel data) async {
    print('saveSchList ${jsonEncode(data)}');
    if (!Hive.box(ConstantValue.schDbName).containsKey(data.serverId)) {
      await Hive.box(ConstantValue.schDbName).put(data.serverId, data);
    } else {
      toastLong("Appcode already exists");
    }

    return;
  }

  List getSchList() {
    return Hive.box(ConstantValue.schDbName).values.toList();
  }

  getSchRemove(inx) async {
    return await Hive.box(ConstantValue.schDbName).deleteAt(inx);
  }

  getSchUpdateLogin(inx, data) async {
    return await Hive.box(ConstantValue.schDbName).putAt(inx, data);
  }

  getSchDetailIndex(inx) async {
    return await Hive.box(ConstantValue.schDbName).getAt(inx);
  }

  getSchByIndex(idserver) async {
    final keys = await Hive.box(ConstantValue.schDbName).keys.toList();
    print('xxx keys $keys}');
    int index = -1;
    for (int i = 0; i < keys.length; i++) {
      print('xxx iii ${jsonEncode(i)}');
      final value = Hive.box(ConstantValue.schDbName).get(keys[i]);
      print('xxx value ${jsonEncode(value.idserver)}');
      if (value != null && value.idserver == idserver) {
        index = i;
        break;
      }
    }

    return index;
  }

  // List<SelectuserModel> getSelectUserList() {
  //   return Hive.box(ConstantValue.dbName).get(DBConstant.KEY_SELECTUSER,
  //       defaultValue: []).cast<SelectuserModel>();
  // }

  void saveToken(String? token) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_TOKEN, token);
    return;
  }

  LoginModel? getLoginData() {
    return Hive.box(ConstantValue.dbName).get(
      DBConstant.KEY_LOGIN,
    );
  }

  void saveLogin(LoginModel login) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_LOGIN, login);
    return;
  }

  void saveSchInfo(AppcodeModel data) {
    print('saveSchInfo ${jsonEncode(data)}');
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_SCHINFO, data);
    return;
  }

  AppcodeModel? getSchInfo() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_SCHINFO, defaultValue: null);
  }

  // void saveSelectUser(List<SelectuserModel>? data) {
  //   Hive.box(ConstantValue.dbName).put(DBConstant.KEY_SELECTUSER, data);
  //   return;
  // }
}
