import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/home_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationDrawerMenu extends GetView<MobileHomeController> {
  const NavigationDrawerMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: const Color(0XFF454545),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 60,
                width: Get.width,
                color: Colors.black,
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: () => Get.to(HomeView()),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                    textDirection: TextDirection.ltr,
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
                    // primary menu title
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0XFFFF6000)),
                        ),
                      ),
                      child: PoppinsText(
                        title: 'Top Menu',
                        size: 16,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // primary menu
                    _buildNestedDropdownMenu(
                      hint: 'Top Menu',
                      menuItems: [
                        'Primary Option 1',
                        'Primary Option 2',
                        'Primary Option 3'
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    // secondary menu title
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0XFFFF6000)),
                        ),
                      ),
                      child: PoppinsText(
                        title: 'Main Menu',
                        size: 16,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // secondary menu
                    _buildNestedDropdownMenu(
                      hint: 'Main Menu',
                      menuItems: [
                        'Secondary Option A',
                        'Secondary Option B',
                        'Secondary Option C'
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNestedDropdownMenu({
    required String hint,
    required List<String> menuItems,
  }) {
    return menuItems.isNotEmpty
        ? DropdownButton<String>(
            hint: PoppinsText(title: hint),
            items: menuItems.map((String menuItem) {
              return DropdownMenuItem<String>(
                value: menuItem,
                child: InkWell(
                  onTap: () {
                    // Handle navigation based on menuItem
                    _navigateToPage(menuItem);
                  },
                  child: Text(menuItem),
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              // Handle dropdown item selection here
            },
          )
        : Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(5.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: const Text(
              'No options available',
              style: TextStyle(color: Colors.white),
            ),
          );
  }

  void _navigateToPage(String menuItem) {
    // Implement your navigation logic here
    switch (menuItem) {
      case 'Primary Option 1':
        Get.toNamed('/home');
        break;
      case 'Primary Option 2':
        Get.toNamed('/home');
        break;
      case 'Primary Option 3':
        Get.toNamed('/home');
        break;
      // Add more cases for other menu items
    }
  }
}
