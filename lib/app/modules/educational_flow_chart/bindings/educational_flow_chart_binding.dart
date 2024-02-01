import 'package:get/get.dart';

import '../controllers/educational_flow_chart_controller.dart';

class EducationalFlowChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EducationalFlowChartController>(
      () => EducationalFlowChartController(),
    );
  }
}
