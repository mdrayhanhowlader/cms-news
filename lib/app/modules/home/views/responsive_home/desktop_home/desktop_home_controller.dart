import 'package:get/get.dart';

class DesktopHomeController extends GetxController {
  var activeIndex = 0.obs;
  var hoveredIndex = (-1).obs;
  var mostViewedHoveredIndex = (-1).obs;
  var hoveredPostIndex = (-1).obs;
  var hoveredDemoIndex = (-1).obs; // Add this line

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

  void updateMostViewedHoveredIndex(int index) {
    mostViewedHoveredIndex.value = index;
  }

  // Add the following methods
  void updateHoveredDemoIndex(int index, bool hovering) {
    hoveredDemoIndex.value = hovering ? index : -1;
  }

  void updateHoveredPostIndex(int index, bool hovering) {
    hoveredDemoIndex.value = hovering ? index : -1;
  }
}
