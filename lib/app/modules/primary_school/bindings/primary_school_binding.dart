import 'package:get/get.dart';

import '../controllers/primary_school_controller.dart';

class PrimarySchoolBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrimarySchoolController>(
      () => PrimarySchoolController(),
    );
  }
}
