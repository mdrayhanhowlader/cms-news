import 'package:get/get.dart';

import '../modules/background/bindings/background_binding.dart';
import '../modules/background/views/background_view.dart';
import '../modules/character/bindings/character_binding.dart';
import '../modules/character/views/character_view.dart';
import '../modules/common_appbar/bindings/common_appbar_binding.dart';
import '../modules/common_appbar/views/common_appbar_view.dart';
import '../modules/common_bottombar/bindings/common_bottombar_binding.dart';
import '../modules/common_bottombar/views/common_bottombar_view.dart';
import '../modules/educational_flow_chart/bindings/educational_flow_chart_binding.dart';
import '../modules/educational_flow_chart/views/educational_flow_chart_view.dart';
import '../modules/fees/bindings/fees_binding.dart';
import '../modules/fees/views/fees_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/logo_interpretation/bindings/logo_interpretation_binding.dart';
import '../modules/logo_interpretation/views/logo_interpretation_view.dart';
import '../modules/management_congregation/bindings/management_congregation_binding.dart';
import '../modules/management_congregation/views/management_congregation_view.dart';
import '../modules/news-detail-page/bindings/news_detail_page_binding.dart';
import '../modules/news-detail-page/views/news_detail_page_view.dart';
import '../modules/objective/bindings/objective_binding.dart';
import '../modules/objective/views/objective_view.dart';
import '../modules/primary_school/bindings/primary_school_binding.dart';
import '../modules/primary_school/views/primary_school_view.dart';
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
    GetPage(
      name: _Paths.EDUCATIONAL_FLOW_CHART,
      page: () => const EducationalFlowChartView(),
      binding: EducationalFlowChartBinding(),
    ),
    GetPage(
      name: _Paths.CHARACTER,
      page: () => const CharacterView(),
      binding: CharacterBinding(),
    ),
    GetPage(
      name: _Paths.OBJECTIVE,
      page: () => const ObjectiveView(),
      binding: ObjectiveBinding(),
    ),
    GetPage(
      name: _Paths.MANAGEMENT_CONGREGATION,
      page: () => const ManagementCongregationView(),
      binding: ManagementCongregationBinding(),
    ),
    GetPage(
      name: _Paths.LOGO_INTERPRETATION,
      page: () => const LogoInterpretationView(),
      binding: LogoInterpretationBinding(),
    ),
    GetPage(
      name: _Paths.PRIMARY_SCHOOL,
      page: () => const PrimarySchoolView(),
      binding: PrimarySchoolBinding(),
    ),
  ];
}
