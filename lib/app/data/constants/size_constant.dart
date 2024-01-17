import 'package:get/get.dart';

class SizeConstant {
  static double five = Get.width * 0.0042;
  static double ten = Get.width * 0.0083;
  static double twelve = Get.width * 0.01; // Standred for 12px
  static double thirteen = Get.width * 0.0108;
  static double fourteen = Get.width * 0.0116;
  static double fifteen = Get.width * 0.0125;
  static double sixteen = Get.width * 0.0133;
  static double eighteen = Get.width * 0.01;
  static double twenty = Get.width * 0.0167;
  static double twentyTwo = Get.width * 0.01;
  static double twentyFour = Get.width * 0.02;
  static double twentyFive = Get.width * 0.0216;
  static double thirty = Get.width * 0.025;
  static double thirtySix = Get.width * 0.03;
  static double fourty = Get.width * 0.0333;
  static double fourtyFour = Get.width * 0.0367;
  static double fifty = Get.width * 0.0417;

  // FOR ANY NUMBER
  static double getSizeByNumber(double input) {
    double ratio = 0.01 / 12; // Standerd 12px
    double equivalentValue = input * ratio;
    double finalWidth = Get.width * equivalentValue;
    return finalWidth;
  }
}
