import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class CommonAppbarController extends GetxController {
  final RxBool isSearchInputVisible = false.obs;

  final whiteHoverMenus = <PlutoMenuItem>[].obs;
  final orangeHoverMenus = <PlutoMenuItem>[].obs;
  RxBool isNavHovered = false.obs;

  @override
  void onInit() {
    super.onInit();
    whiteHoverMenus.assignAll(_makeBottomMenus());
    orangeHoverMenus.assignAll(_makeMenus());
  }

  void toggleSearchInput() {
    isSearchInputVisible.toggle();
  }

  void message(String text) {
    Get.snackbar('Message', text);
  }

  List<PlutoMenuItem> _makeBottomMenus() {
    return [
      // Customize your white hover menus here
    ];
  }

  List<PlutoMenuItem> _makeMenus() {
    return [
      // Customize your orange hover menus here
    ];
  }
}
