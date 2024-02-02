import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class NavTop extends GetView<CommonAppbarController> {
  const NavTop({Key? key}) : super(key: key);

  List<PlutoMenuItem> makeMenus() {
    return [
      PlutoMenuItem(
        title: 'MAIN',
        onTap: () => Get.toNamed('/home'),
      ),
      PlutoMenuItem(
        title: 'INFO',
        children: [
          // Add INFO menu items here...
          PlutoMenuItem.divider(
              height: 4, color: Colors.red, thickness: 4, endIndent: 3),
          PlutoMenuItem(
            title: 'Headquarters Organization Chart',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Fee Information',
            onTap: () => Get.toNamed('/fees'),
          ),
          PlutoMenuItem(
            title: 'Background',
            onTap: () => Get.toNamed('/background'),
          ),
          PlutoMenuItem(
            title: 'Education Flow Chart',
            onTap: () => Get.toNamed('/educational-flow-chart'),
          ),
          PlutoMenuItem(
            title: 'Character',
            onTap: () => Get.toNamed('/character'),
          ),
          PlutoMenuItem(
            title: 'Objective',
            onTap: () => Get.toNamed('/objective'),
          ),
          PlutoMenuItem(
            title: 'Management Congregation',
            onTap: () => Get.toNamed('/management-congregation'),
          ),
          PlutoMenuItem(
            title: 'Logo Interpretation',
            onTap: () => Get.toNamed('/logo-interpretation'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'BRANCH',
        children: [
          // Add BRANCH menu items here...
          PlutoMenuItem.divider(
              height: 4, color: Colors.red, thickness: 4, endIndent: 3),
          PlutoMenuItem(
            title: 'Primary School',
            onTap: () => Get.toNamed('/primary-school'),
          ),
          PlutoMenuItem(
            title: 'Low School',
            onTap: () => Get.toNamed('/low-school'),
          ),
          PlutoMenuItem(
            title: 'Upper Secondary',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Vocational Tahfiz',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Diploma',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'E-ALUMNI',
        children: [
          // Add E-ALUMNI menu items here...
          PlutoMenuItem.divider(
              height: 4, color: Colors.red, thickness: 4, endIndent: 3),
          PlutoMenuItem(
            title: 'Headquarters Organization Chart',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Fee Information',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Background',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Education Flow Chart',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Character',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Objective',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Management Congregation',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Logo Interpretation',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'LINK',
        children: [
          // Add E-CAREER menu items here...
          PlutoMenuItem.divider(
              height: 4, color: Colors.red, thickness: 4, endIndent: 3),
          PlutoMenuItem(
            title: 'Primary School',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Low School',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Upper Secondary',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Vocational Tahfiz',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
          PlutoMenuItem(
            title: 'Diploma',
            onTap: () => Get.toNamed('/news-detail-page'),
          ),
        ],
      ),
      PlutoMenuItem(
          title: 'E-CAREER', onTap: () => Get.toNamed('/news-detail-page')),
      // Add other menu items here...
    ];
  }

  double calculateFontSize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Set a maximum font size
    double maxFontSize = 15.0;

    // Check if the screen width is greater than 1280px (for web)
    if (screenWidth > 1280) {
      return maxFontSize;
    } else {
      // Adjust the font size based on screen width for smaller screens
      return maxFontSize * screenWidth / 1280.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlutoMenuBar(
          mode: PlutoMenuBarMode.hover,
          backgroundColor: const Color(0XFF292929),
          itemStyle: PlutoMenuItemStyle(
              activatedColor: Colors.red,
              indicatorColor: Colors.red,
              textStyle: TextStyle(
                  color: Colors.white, fontSize: calculateFontSize(context)),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
              enableSelectedTopMenu: true,
              selectedTopMenuTextStyle: TextStyle(
                  color: Color(0XFFFF6000),
                  background: Paint(),
                  fontSize: calculateFontSize(context)),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5)),
          menus: makeMenus(),
        ),
      ],
    );
  }

  void message(String text) {
    Get.snackbar('Message', text);
  }
}
