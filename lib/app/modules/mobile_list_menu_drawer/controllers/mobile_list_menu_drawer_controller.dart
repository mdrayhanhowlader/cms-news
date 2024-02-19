import 'package:get/get.dart';

class MobileListMenuDrawerController extends GetxController {
  RxBool isHovered = false.obs;
  RxBool divisionSwitch = false.obs;
  RxString selectedItem = ''.obs;
  RxInt openDropdownIndex = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    // Your initialization logic here
  }

  @override
  void onReady() {
    super.onReady();
    // Your logic that needs to run after the widget is rendered
  }

  @override
  void onClose() {
    super.onClose();
    // Your cleanup logic here
  }

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
