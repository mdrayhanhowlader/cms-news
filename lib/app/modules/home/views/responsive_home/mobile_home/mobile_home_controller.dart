import 'package:get/get.dart';

class MobileHomeController extends GetxController {
  RxBool isHovered = false.obs;
  RxBool divisionSwitch = false.obs;
  RxString selectedItem = ''.obs;
  RxInt openDropdownIndex = (-1).obs; // Track the index of the open dropdown

  void setHoverState(bool value) {
    isHovered.value = value;
  }

  void toggleDropdown(int index) {
    if (openDropdownIndex.value == index) {
      openDropdownIndex.value = -1; // Close the open dropdown
    } else {
      openDropdownIndex.value = index; // Open the selected dropdown
    }
  }
}

class YourObjectType {
  String? prm; // Replace 'prm' with the actual field name

  YourObjectType({this.prm});
}
