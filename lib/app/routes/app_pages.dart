import 'package:get/get.dart';

import '../modules/common_appbar/bindings/common_appbar_binding.dart';
import '../modules/common_appbar/views/common_appbar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/test/bindings/test_binding.dart';
import '../modules/test/views/test_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COMMON_APPBAR,
      page: () => CommonAppbarView(),
      binding: CommonAppbarBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => const TestView(),
      binding: TestBinding(),
    ),
  ];
}
