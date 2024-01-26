import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/news_detail_page_controller.dart';

class NewsDetailPageView extends GetView<NewsDetailPageController> {
  const NewsDetailPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const CommonAppbarView(),
              const SizedBox(
                height: 20,
              ),
              const HighlightNews(),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: Get.width * 0.9,
                child: Image.asset(
                  'assets/images/news-detail/detail.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
