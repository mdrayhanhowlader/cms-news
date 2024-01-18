import 'package:cms_maahadtahfizaddin/app/modules/test/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class PlutoMenuBarDemo extends GetView<TestController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            backgroundColor: Colors.deepOrange,
            itemStyle: const PlutoMenuItemStyle(
              activatedColor: Colors.white,
              indicatorColor: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
            ),
            menus: controller.orangeHoverMenus,
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
