import 'package:get/get.dart';

import '../controllers/mobile_list_menu_drawer_controller.dart';

class MobileListMenuDrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MobileListMenuDrawerController>(
      () => MobileListMenuDrawerController(),
    );
  }
}
