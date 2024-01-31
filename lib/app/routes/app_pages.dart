import 'package:get/get.dart';

import '../modules/background/bindings/background_binding.dart';
import '../modules/background/views/background_view.dart';
import '../modules/common_appbar/bindings/common_appbar_binding.dart';
import '../modules/common_appbar/views/common_appbar_view.dart';
import '../modules/common_bottombar/bindings/common_bottombar_binding.dart';
import '../modules/common_bottombar/views/common_bottombar_view.dart';
import '../modules/fees/bindings/fees_binding.dart';
import '../modules/fees/views/fees_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/news-detail-page/bindings/news_detail_page_binding.dart';
import '../modules/news-detail-page/views/news_detail_page_view.dart';
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
    GetPage(
      name: _Paths.COMMON_BOTTOMBAR,
      page: () => const CommonBottombarView(),
      binding: CommonBottombarBinding(),
    ),
    GetPage(
      name: _Paths.NEWS_DETAIL_PAGE,
      page: () => const NewsDetailPageView(),
      binding: NewsDetailPageBinding(),
    ),
    GetPage(
      name: _Paths.FEES,
      page: () => const FeesView(),
      binding: FeesBinding(),
    ),
    GetPage(
      name: _Paths.BACKGROUND,
      page: () => const BackgroundView(),
      binding: BackgroundBinding(),
    ),
  ];
}
