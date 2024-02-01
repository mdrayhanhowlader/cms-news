import 'package:get/get.dart';

import '../controllers/objective_controller.dart';

class ObjectiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ObjectiveController>(
      () => ObjectiveController(),
    );
  }
}
