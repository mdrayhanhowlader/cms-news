import 'package:get/get.dart';

import '../controllers/common_appbar_controller.dart';

class CommonAppbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommonAppbarController>(
      () => CommonAppbarController(),
    );
  }
}
