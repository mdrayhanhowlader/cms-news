import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppbarView extends GetView<CommonAppbarController>
    implements PreferredSizeWidget {
  const CommonAppbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: const Color(0XFF292929),
          child: Container(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * 0.6,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('SIGN IN / JOIN',
                          style: TextStyle(color: Colors.white)),
                      Text('MAIN', style: TextStyle(color: Colors.white)),
                      Text('INFO', style: TextStyle(color: Colors.white)),
                      Text('BRANCH', style: TextStyle(color: Colors.white)),
                      Text('E-ALUMNI', style: TextStyle(color: Colors.white)),
                      Text('LINK', style: TextStyle(color: Colors.white)),
                      Text('ECAREER', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        AppBar(
          title: InkWell(
              onTap: () {
                Get.to(HomeView());
              },
              child: Image.asset('assets/images/logo/logo.png')),
          actions: [Image.asset('assets/images/logo/frame.png')],
        ),
        Material(
          color: Color(0XFF292929),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FEATURES', style: TextStyle(color: Colors.white)),
                    Text('WOMESTAY', style: TextStyle(color: Colors.white)),
                    Text('ENFAQ', style: TextStyle(color: Colors.white)),
                    Text('COLLABORATE', style: TextStyle(color: Colors.white)),
                    Text('APPLY FOR ZAKAT',
                        style: TextStyle(color: Colors.white)),
                    Text('SHOP', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.yellow,
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight * 3); // Adjust the height as needed
}
