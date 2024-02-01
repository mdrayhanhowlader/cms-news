import 'package:get/get.dart';

import '../controllers/logo_interpretation_controller.dart';

class LogoInterpretationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogoInterpretationController>(
      () => LogoInterpretationController(),
    );
  }
}
