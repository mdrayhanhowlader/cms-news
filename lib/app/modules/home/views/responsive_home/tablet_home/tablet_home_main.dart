import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_recent_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_videos.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/follow_social_media.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/labels_menu.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/popular_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_label_menu.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_most_viewed.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_popular_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_recent_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_social_media.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_top_news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabletHomeMain extends GetView<TabletHomeController> {
  const TabletHomeMain({super.key});

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
                  Container(
                    width: Get.width * 0.6,
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: const TabletTopNews(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TabletMostViewed(),
                  const SizedBox(
                    height: 10,
                  ),
                  const HomeVideos(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TabletRecentPost()
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
                  TabletSocialMedia(),
                  SizedBox(
                    height: 20,
                  ),
                  TabletLabelMenu(),
                  SizedBox(
                    height: 20,
                  ),
                  TabletPopularPost()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
