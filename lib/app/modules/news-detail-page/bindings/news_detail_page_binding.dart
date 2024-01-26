import 'package:get/get.dart';

import '../controllers/news_detail_page_controller.dart';

class NewsDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsDetailPageController>(
      () => NewsDetailPageController(),
    );
  }
}
