import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class NavBottom extends GetView<CommonAppbarController> {
  const NavBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side: PlutoMenuBar
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            backgroundColor: Color(0XFF292929),
            itemStyle: const PlutoMenuItemStyle(
              activatedColor: Colors.white,
              indicatorColor: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
            ),
            menus: controller.whiteHoverMenus,
          ),

          // Right side: Search icon
        ],
      ),
    );
  }

  Widget _buildSearchIcon() {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () => controller.toggleSearchInput(),
    );
  }
}
