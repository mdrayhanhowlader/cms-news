import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_most_views.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_top_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/home_videos.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/follow_social_media.dart';
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Adjust the height as needed
        child: AppBar(
          backgroundColor: Colors.black, // Set your desired app bar color
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo/bottom-logo.png', // Replace with your logo image asset
                width: 150,
                fit: BoxFit.fitWidth, // Adjust the height as needed
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
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
      drawer: Drawer(
        width: Get.width,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.black,
        child: Container(
          color: Colors.black, // Set your desired drawer background color
          child: MyDrawer(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MobileAppbar(),
              const SizedBox(height: 5),
              const MobileHighlightNews(),
              MobileSlider(),
              const SizedBox(height: 20),
              const HomeTopNews(),
              const SizedBox(height: 20),
              HomeMostViews(),
              const SizedBox(height: 20),
              const HomeVideos(),
              const SizedBox(height: 20),
              FollowSocialMedia(),
              const SizedBox(height: 20),
              const MobileBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width * 0.95,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: InkWell(
                onTap: () {
                  Get.toNamed('/home');
                },
                child: Icon(Icons.arrow_back),
              ),
            ),
            Container(
              child: Column(
                children: List.generate(
                  5,
                  (index) => ListTile(
                    title: Text('Title $index'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButton<String>(
                          hint: Text('Dropdown 1'),
                          items: ['Option 1', 'Option 2', 'Option 3']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // Handle dropdown 1 value change
                          },
                        ),
                        DropdownButton<String>(
                          hint: Text('Dropdown 2'),
                          items: ['Option A', 'Option B', 'Option C']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // Handle dropdown 2 value change
                          },
                        ),
                        DropdownButton<String>(
                          hint: Text('Dropdown 3'),
                          items: ['Choice X', 'Choice Y', 'Choice Z']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // Handle dropdown 3 value change
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
