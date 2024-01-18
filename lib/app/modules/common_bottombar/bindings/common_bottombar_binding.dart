import 'package:get/get.dart';

import '../controllers/common_bottombar_controller.dart';

class CommonBottombarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommonBottombarController>(
      () => CommonBottombarController(),
    );
  }
}
