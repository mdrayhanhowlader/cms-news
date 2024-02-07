import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_most_views.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_top_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/follow_social_media.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/labels_menu.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/popular_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_appbar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_bottom_bar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_highlight_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileHomeView extends GetView<MobileHomeController> {
  const MobileHomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 160, child: const MobileAppbar()),
            const SizedBox(height: 5),
            const MobileHighlightNews(),
            MobileSlider(),

            const SizedBox(height: 20),
            const HomeTopNews(),
            const SizedBox(height: 20),
            HomeMostViews(),
            const SizedBox(height: 20),
            // const HomeVideos(),
            const SizedBox(height: 20),
            const FollowSocialMedia(),
            const SizedBox(height: 20),
            const LabelsMenu(),
            const SizedBox(height: 20),
            const PopularPost(),
            const SizedBox(
              height: 20,
            ),
            const MobileBottomBar(),
          ],
        ),
      ),
    );
  }
}
