import 'package:get/get.dart';

import '../controllers/management_congregation_controller.dart';

class ManagementCongregationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManagementCongregationController>(
      () => ManagementCongregationController(),
    );
  }
}
