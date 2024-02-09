import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileAppbar extends GetView<MobileHomeController> {
  const MobileAppbar({Key? key}) : super(key: key);

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
    );
  }
}
