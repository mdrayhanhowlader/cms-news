import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/news-detail-page/views/news_detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class NavTop extends GetView<CommonAppbarController> {
  const NavTop({Key? key}) : super(key: key);

  List<PlutoMenuItem> makeMenus() {
    return [
      PlutoMenuItem(
        title: 'MAIN',
        children: [
          PlutoMenuItem(
            title: 'Menu 1-1',
            icon: Icons.group,
            onTap: () => message('Menu 1-1 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 1-1-1',
                onTap: () => message('Menu 1-1-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-1',
                    onTap: () => message('Menu 1-1-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-2',
                    onTap: () => message('Menu 1-1-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 1-1-2',
                onTap: () => message('Menu 1-1-2 tap'),
              ),
            ],
          ),
          // Add other MAIN menu items here...
        ],
      ),
      PlutoMenuItem(
        title: 'INFO',
        children: [
          // Add INFO menu items here...
        ],
      ),
      PlutoMenuItem(
        title: 'BRANCH',
        children: [
          // Add BRANCH menu items here...
        ],
      ),
      PlutoMenuItem(
        title: 'E-ALUMNI',
        children: [
          // Add E-ALUMNI menu items here...
        ],
      ),
      PlutoMenuItem(
        title: 'E-CAREER',
        children: [
          PlutoMenuItem(
              title: 'e-career 1',
              onTap: () {
                Get.to(NewsDetailPageView());
              })
          // Add E-CAREER menu items here...
        ],
      ),
      // Add other menu items here...
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlutoMenuBar(
          mode: PlutoMenuBarMode.hover,
          backgroundColor: Color(0XFF292929),
          itemStyle: const PlutoMenuItemStyle(
            activatedColor: Colors.deepOrange,
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

  void message(String text) {
    Get.snackbar('Message', text);
  }
}
