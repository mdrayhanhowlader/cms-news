import 'package:get/get.dart';

class DesktopHomeController extends GetxController {
  var activeIndex = 0.obs;
  var hoveredIndex = (-1).obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => activeIndex.value++;

  void updateHoveredIndex(int index) {
    hoveredIndex.value = index;
  }
}
