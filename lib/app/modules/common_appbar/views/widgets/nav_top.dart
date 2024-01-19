import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class NavTop extends GetView<CommonAppbarController> {
  const NavTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          menus: controller.orangeHoverMenus,
        ),
      ],
    );
  }
}
