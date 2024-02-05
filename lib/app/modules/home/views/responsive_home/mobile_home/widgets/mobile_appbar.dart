import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_highlight_news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileAppbar extends GetView<MobileHomeController> {
  const MobileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.95,
      child: Column(
        children: [
          Container(
            width: Get.width * 0.95,
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset('assets/images/logo/logo.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      // Handle hamburger icon tap
                      // You can open the drawer or navigate to another screen
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () {
                      // Handle search icon tap
                      // You can open a search screen or perform search-related actions
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const MobileHighlightNews(),
        ],
      ),
    );
  }
}
