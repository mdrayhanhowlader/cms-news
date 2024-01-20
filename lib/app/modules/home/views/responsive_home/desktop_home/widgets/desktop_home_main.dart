import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/follow_social_media.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_most_views.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_top_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_recent_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_videos.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/labels_menu.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/popular_post.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopHomeMain extends GetView<DesktopHomeController> {
  const DesktopHomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      alignment: Alignment.center,
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                // right: BorderSide(width: 1, color: Colors.black),
                top: BorderSide(width: 1, color: Colors.black))),
        child: Row(
          children: [
            Container(
              height: Get.height * 0.8,
              decoration: const BoxDecoration(
                  border: Border(
                right: BorderSide(width: 1, color: Colors.black),
                // top: BorderSide(width: 1, color: Colors.black)
              )),
              width: Get.width * 0.6,
              child: const Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  HomeTopNews(),
                  SizedBox(
                    height: 50,
                  ),
                  HomeMostViews(),
                  SizedBox(
                    height: 50,
                  ),
                  HomeVideos(),
                  SizedBox(
                    height: 50,
                  ),
                  HomeRecentPost(),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  // border:
                  //     Border(top: BorderSide(width: 1, color: Colors.black))
                  ),
              width: Get.width * 0.3,
              child: const Column(
                children: [FollowSocialMedia(), LabelsMenu(), PopularPost()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
