import 'package:get/get.dart';

class MobileHomeController extends GetxController {
  RxBool isHovered = false.obs;

  void setHoverState(bool value) {
    isHovered.value = value;
  }
}
