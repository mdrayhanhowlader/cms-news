import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_right/popular_post.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopAllNews extends GetView<DesktopHomeController> {
  const DesktopAllNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Get.width * 0.5,
            color: Colors.black,
            child: DesktopSlider(),
          ),
          Container(
            width: Get.width * 0.4,
            color: Colors.red,
            child: Text('all news right'),
          ),
        ],
      ),
    );
  }
}
