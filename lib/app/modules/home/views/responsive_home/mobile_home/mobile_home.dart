import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/breaking_news.dart';
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
              MobileAppbar(),
              Container(
                width: Get.width * 0.95,
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset('assets/images/logo/logo.png'),
              ),
              // const CommonAppbarView(),
              const SizedBox(
                height: 20,
              ),
              const MobileHighlightNews(),

              const SizedBox(
                height: 5,
              ),

              MobileSlider(),

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
