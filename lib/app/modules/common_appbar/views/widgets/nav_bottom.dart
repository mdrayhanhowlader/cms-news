import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
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
        icon: Icons.house,
      ),
      PlutoMenuItem(
        title: 'FEATURES',
        children: [
          PlutoMenuItem.divider(
              height: 4, color: Colors.red, thickness: 4, endIndent: 3),
          PlutoMenuItem.widget(
            widget: featureSubNav(),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'HOMESTAY',
        children: [
          // Use PlutoMenuItem.widget to add a custom widget
          PlutoMenuItem.divider(
              height: 4, color: Colors.red, thickness: 4, endIndent: 3),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left side: PlutoMenuBar
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            backgroundColor: const Color(0XFF292929),
            itemStyle: const PlutoMenuItemStyle(
              activatedColor: Colors.red,
              indicatorColor: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
              enableSelectedTopMenu: true,
              selectedTopMenuIconColor: Colors.white,
              iconSize: 28,
            ),
            menus: makeMenus(),
          ),
        ),
      ],
    );
  }

  Widget featureSubNav() {
    return Container(
      width: Get.width * 0.8,
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.black))),
                  child: PoppinsText(
                    title: 'PAGES',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onHover: (value) {
                    Colors.red;
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PoppinsText(
                        title: 'NEW PAGE',
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.black))),
                  child: PoppinsText(
                    title: 'BLOG',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.black))),
                  child: PoppinsText(
                    title: 'POST',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.black))),
                  child: PoppinsText(
                    title: 'Review',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: 'NEW PAGE',
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
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
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0XFF000000)))),
                  child: PoppinsText(
                    title: 'APARTMENT A',
                    color: Colors.white,
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0XFF000000)))),
                  child: PoppinsText(
                    title: 'APARTMENT B',
                    color: Colors.white,
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0XFF000000)))),
                  child: PoppinsText(
                    title: 'APARTMENT C',
                    color: Colors.white,
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            width: Get.width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/apartment/apartment1.png',
                      height: 200,
                      width: Get.width * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/apartment/apartment2.png',
                      height: 200,
                      width: Get.width * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/apartment/apartment3.png',
                      height: 200,
                      width: Get.width * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
