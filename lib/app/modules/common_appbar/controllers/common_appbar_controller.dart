import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class CommonAppbarController extends GetxController {
  // Add an observable to track the visibility of the search input
  final RxBool isSearchInputVisible = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // void increment() => count.value++;

  // Function to toggle the visibility of the search input
  void toggleSearchInput() {
    isSearchInputVisible.toggle();
  }

  final whiteHoverMenus = <PlutoMenuItem>[].obs;
  final orangeHoverMenus = <PlutoMenuItem>[].obs;
  RxBool isNavHovered = false.obs;

  @override
  void onInit() {
    super.onInit();
    // whiteHoverMenus.assignAll(_makeBottomMenus());
    // orangeHoverMenus.assignAll(_makeMenus());
  }

  void message(String text) {
    Get.snackbar('Message', text);
  }
}
