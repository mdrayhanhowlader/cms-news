import 'package:get/get.dart';

class MobileHomeController extends GetxController {
  RxBool isHovered = false.obs;
  RxBool divisionSwitch = false.obs;
  RxString selectedItem = ''.obs;
  Rx<List<YourObjectType>> listStaffThings = Rx<List<YourObjectType>>([]);

  void setHoverState(bool value) {
    isHovered.value = value;
  }
}

class YourObjectType {
  String? prm; // Replace 'prm' with the actual field name

  YourObjectType({this.prm});
}
