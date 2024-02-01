import 'package:get/get.dart';

import '../controllers/low_school_controller.dart';

class LowSchoolBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LowSchoolController>(
      () => LowSchoolController(),
    );
  }
}
