import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/home_most_views.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/home_news_top_part.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/home_recent_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/home_videos.dart';
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
                  // HomeNewsTop(),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  HomeMostViews(),
                  SizedBox(
                    height: 15,
                  ),
                  HomeVideos(),
                  SizedBox(
                    height: 15,
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
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
