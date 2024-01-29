import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';

class NavBottom extends GetView<CommonAppbarController> {
  const NavBottom({Key? key}) : super(key: key);

  List<PlutoMenuItem> makeMenus() {
    return [
      PlutoMenuItem(
        title: '',
        icon: Icons.home,
      ),
      PlutoMenuItem(
        title: 'FEATURES',
        children: [PlutoMenuItem(title: 'title')],
        onTap: () => controller.message('FEATURES tap'),
      ),
      PlutoMenuItem(
        title: 'HOMESTAY',
        onTap: () => controller.message('HOMESTAY tap'),
      ),
      PlutoMenuItem(
        title: 'E-INFAQ',
        onTap: () => controller.message('E-INFAQ tap'),
      ),
      PlutoMenuItem(
        title: 'COLLABORATE',
        onTap: () => controller.message('COLLABORATE tap'),
      ),
      PlutoMenuItem(
        title: 'APPLY FOR ZAKAT',
        onTap: () => controller.message('APPLY FOR ZAKAT tap'),
      ),
      PlutoMenuItem(
        title: 'SHOP',
        onTap: () => controller.message('SHOP tap'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left side: PlutoMenuBar
        PlutoMenuBar(
          mode: PlutoMenuBarMode.hover,
          backgroundColor: const Color(0XFF292929),
          itemStyle: const PlutoMenuItemStyle(
            activatedColor: Colors.red,
            indicatorColor: Colors.deepOrange,
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
            moreIconColor: Colors.white,
          ),
          menus: makeMenus(),
        ),
      ],
    );
  }

  Widget _buildSearchIcon() {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () => controller.toggleSearchInput(),
    );
  }
}
