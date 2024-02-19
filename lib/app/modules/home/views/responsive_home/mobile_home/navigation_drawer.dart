// File: navigation_drawer_menu.dart
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/home_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NavigationDrawerMenu extends GetView<MobileHomeController> {
  const NavigationDrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MobileHomeController controller = Get.put(MobileHomeController());

    // List of menu items
    final List<Map<String, dynamic>> menuItems = [
      {
        'title': 'MAIN',
        'childTitles': ['']
      },
      {
        'title': 'INFO',
        'childTitles': [
          'Headquarters Organization Chart',
          'Fee Information',
          'Background',
          'Education flow chart',
          'Character',
          'Objective',
          'Management Congregation',
          'logo interpretation'
        ]
      },
      {
        'title': 'BRANCH',
        'childTitles': ['']
      },
      {
        'title': 'E-ALUMNI',
        'childTitles': ['']
      },
      {
        'title': 'LINK',
        'childTitles': ['']
      },
      {
        'title': 'E-CAREER',
        'childTitles': ['']
      },
      // Add more menu items as needed
    ];

    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: const Color(0XFF454545),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 48,
                width: Get.width,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  border: Border(
                    bottom: BorderSide(width: 1, color: Color(0XFFFF6000)),
                  ),
                ),
                child: InkWell(
                  onTap: () => Get.to(const HomeView()),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color(0XFF454545),
                width: Get.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0XFFFF6000),
                          ),
                        ),
                      ),
                      child: PoppinsText(
                        title: 'Top Menu',
                        size: 16,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        // Generate CollapsibleMenuItem dynamically
                        for (int i = 0; i < menuItems.length; i++)
                          CollapsibleMenuItem(
                            title: menuItems[i]['title']!,
                            childTitles: menuItems[i]['childTitles']!,
                            index: i,
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0XFFFF6000),
                          ),
                        ),
                      ),
                      child: PoppinsText(
                        title: 'Main Menu',
                        size: 16,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollapsibleMenuItem extends StatelessWidget {
  final String title;
  final List<String> childTitles;
  final int index; // Pass the index to identify the dropdown

  CollapsibleMenuItem({
    Key? key,
    required this.title,
    required this.childTitles,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MobileHomeController controller = Get.put(MobileHomeController());

    return Obx(() {
      return Column(
        children: [
          InkWell(
            onTap: () {
              controller.toggleDropdown(index); // Toggle dropdown on tap
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: controller.openDropdownIndex.value == index
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PoppinsText(
                    title: title,
                    color: Colors.white,
                    size: 16,
                  ),
                  FaIcon(
                    controller.openDropdownIndex.value == index
                        ? FontAwesomeIcons.angleUp
                        : FontAwesomeIcons.angleDown,
                    color: controller.openDropdownIndex.value == index
                        ? Colors.white
                        : Colors.red,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
          if (controller.openDropdownIndex.value == index)
            Column(
              children: [
                for (int i = 0; i < childTitles.length; i++)
                  InkWell(
                    onTap: () async {
                      // Handle navigation to dynamic page based on childTitle
                      await Get.toNamed('/${childTitles[i]}');
                      // Close the drawer after navigating
                      Get.back();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 2, left: 20),
                      width: Get.width * 0.9,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: PoppinsText(
                        title: childTitles[i],
                        color: Colors.white,
                        align: TextAlign.left,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            ),
        ],
      );
    });
  }
}
