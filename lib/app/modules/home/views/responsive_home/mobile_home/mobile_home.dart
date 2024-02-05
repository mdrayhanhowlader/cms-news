import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_most_views.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_top_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_videos.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_appbar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_bottom_bar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_highlight_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileHomeView extends GetView<MobileHomeController> {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MobileAppbar(),
              // const CommonAppbarView(),

              const SizedBox(
                height: 5,
              ),

              MobileSlider(),

              const SizedBox(
                height: 20,
              ),

              const HomeTopNews(),

              const SizedBox(
                height: 20,
              ),

              HomeMostViews(),
              const SizedBox(
                height: 20,
              ),

              const HomeVideos(),

              const SizedBox(
                height: 20,
              ),
              const MobileBottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
