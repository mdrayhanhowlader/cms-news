import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';

class NavBottom extends GetView<CommonAppbarController> {
  const NavBottom({Key? key}) : super(key: key);

  double calculateFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 1280) {
      return baseFontSize;
    } else {
      return baseFontSize * screenWidth / 1280.0;
    }
  }

  List<PlutoMenuItem> makeMenus() {
    return [
      PlutoMenuItem(
        title: '',
        icon: Icons.house,
      ),
      PlutoMenuItem(
        title: 'FEATURES',
        children: [
          PlutoMenuItem.divider(
            height: 4,
            color: Colors.red,
            thickness: 4,
            endIndent: 3,
          ),
          PlutoMenuItem.widget(
            widget: featureSubNav(),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'HOMESTAY',
        children: [
          PlutoMenuItem.divider(
            height: 4,
            color: Colors.red,
            thickness: 4,
            endIndent: 3,
          ),
          PlutoMenuItem.widget(
            widget: buildBottomNav(),
          ),
        ],
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
    double baseFontSize = 15.0;
    double fontSize = calculateFontSize(context, baseFontSize);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left side: PlutoMenuBar
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            backgroundColor: const Color(0XFF292929),
            itemStyle: PlutoMenuItemStyle(
              activatedColor: Colors.red,
              indicatorColor: Colors.deepOrange,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: calculateFontSize(context, baseFontSize),
              ),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
              enableSelectedTopMenu: true,
              selectedTopMenuIconColor: Colors.white,
              selectedTopMenuTextStyle: TextStyle(
                color: const Color(0XFFFF6000),
                fontSize: calculateFontSize(context, baseFontSize),
              ),
              iconSize: 28,
            ),
            menus: makeMenus(),
          ),
        ),
      ],
    );
  }

  Widget featureSubNav() {
    double baseFontSize = 13.0;
    double fontSize = baseFontSize;

    List<Widget> pageRows = [
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
    ];

    List<Widget> blogRows = [
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
    ];

    List<Widget> postRows = [
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
    ];

    List<Widget> reviewRows = [
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
      _buildRow('NEW PAGE', fontSize),
    ];

    return Container(
      width: Get.width * 0.8,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSection('PAGES', Colors.white),
                ...pageRows,
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSection('BLOG', Colors.white),
                ...blogRows,
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSection('POST', Colors.white),
                ...postRows,
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSection('Review', Colors.white),
                ...reviewRows,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomNav() {
    return Container(
      width: Get.width * 0.7,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: Get.width * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSection('APARTMENT A', Colors.white),
                const SizedBox(height: 20),
                _buildSection('APARTMENT B', Colors.white),
                const SizedBox(height: 20),
                _buildSection('APARTMENT C', Colors.white),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            width: Get.width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImage('assets/images/apartment/apartment1.png'),
                const SizedBox(width: 15),
                _buildImage('assets/images/apartment/apartment2.png'),
                const SizedBox(width: 15),
                _buildImage('assets/images/apartment/apartment3.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String title, double fontSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.arrow_right,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 5),
            PoppinsText(
              title: title,
              size: fontSize,
              color: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  Widget _buildSection(String title, Color color) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black),
        ),
      ),
      child: PoppinsText(
        title: title,
        color: color,
      ),
    );
  }

  Widget _buildImage(String assetPath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        child: Image.asset(
          assetPath,
          height: 200,
          width: Get.width * 0.15,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
