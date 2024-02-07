import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_all_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_most_views.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_top_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_videos.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/follow_social_media.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/labels_menu.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/popular_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/navigation_drawer.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_bottom_bar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_highlight_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileHomeView extends GetView<MobileHomeController> {
  const MobileHomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(165.0), // Adjust the height as needed
        child: Column(
          children: [
            Container(
              height: 100,
              width: Get.width * 0.95,
              child: InkWell(
                onTap: () {
                  Get.toNamed('/home');
                },
                child: Image.asset(
                  'assets/images/logo/logo.png', // Replace with your logo image asset
                  width: Get.width * 0.9,
                  // Adjust the height as needed
                ),
              ),
            ),
            Container(
              width: Get.width * 0.95,
              child: AppBar(
                toolbarHeight: 60,
                foregroundColor: Colors.white,
                backgroundColor: Colors.black, // Set your desired app bar color

                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Handle search icon press
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        width: Get.width,
        child: Container(
          color: Colors.white, // Set your desired drawer background color
          child: const NavigationDrawerMenu(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const MobileAppbar(),
              // const SizedBox(height: 5),
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
      ),
    );
  }
}
