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
                top: BorderSide(width: 1, color: Color(0XFFB2B2B2)))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                right: BorderSide(width: 1, color: Color(0XFFB2B2B2)),
                // top: BorderSide(width: 1, color: Colors.black)
              )),
              width: Get.width * 0.6,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const HomeTopNews(),
                  const SizedBox(
                    height: 50,
                  ),
                  HomeMostViews(),
                  const SizedBox(
                    height: 50,
                  ),
                  HomeVideos(),
                  const SizedBox(
                    height: 50,
                  ),
                  const HomeRecentPost(),
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
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  FollowSocialMedia(),
                  SizedBox(
                    height: 40,
                  ),
                  LabelsMenu(),
                  SizedBox(
                    height: 40,
                  ),
                  PopularPost()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
