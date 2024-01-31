import 'package:get/get.dart';

import '../controllers/background_controller.dart';

class BackgroundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BackgroundController>(
      () => BackgroundController(),
    );
  }
}
