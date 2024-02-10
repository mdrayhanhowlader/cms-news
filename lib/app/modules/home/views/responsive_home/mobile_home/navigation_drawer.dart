import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/home_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationDrawerMenu extends GetView<MobileHomeController> {
  const NavigationDrawerMenu({Key? key}) : super(key: key);

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
                height: 80,
                width: Get.width,
                color: Colors.black,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () => Get.to(HomeView()),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      PoppinsText(
                        title: 'My Awesome App',
                        size: 18,
                        weight: FontWeight.w600,
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
                    // Primary menu title
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0XFFFF6000)),
                        ),
                      ),
                      child: PoppinsText(
                        title: 'Top Menu',
                        size: 18,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Primary menu
                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0XFFFF6000)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: DropdownButton<String>(
                          dropdownColor: const Color(0XFF454545),
                          hint: const Text(
                            'MAIN',
                            style: TextStyle(color: Colors.white),
                          ),
                          items: <DropdownMenuItem<String>>[
                            DropdownMenuItem<String>(
                              onTap: () async {
                                await Get.toNamed('/news-detail-page');
                                await Navigator.of(context)
                                    .pushNamed('/news-detail-page');
                              },
                              value: 'INFO',
                              child: Text(
                                'INFO',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'BRANCH',
                              child: Text(
                                'BRANCH',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'E-ALUMNI',
                              child: Text(
                                'E-ALUMNI',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'LINK',
                              child: Text(
                                'LINK',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'E-CAREER',
                              child: Text(
                                'E-CAREER',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'MENU_1',
                              child: Text(
                                'MENU 1',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'MENU_2',
                              child: Text(
                                'MENU 2',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'MENU_3',
                              child: Text(
                                'MENU 3',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'MENU_4',
                              child: Text(
                                'MENU 4',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'MENU_5',
                              child: Text(
                                'MENU 5',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'MENU_6',
                              child: Text(
                                'MENU 6',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'MENU_7',
                              child: Text(
                                'MENU 7',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                          onChanged: (value) {
                            // Handle the selected value here
                            print('Selected value: $value');
                          },
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Colors.white,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.white),
                          underline: Container(
                            height: 2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Secondary menu title
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0XFFFF6000)),
                        ),
                      ),
                      child: PoppinsText(
                        title: 'Main Menu',
                        size: 18,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Secondary menu
                    ListTile(
                      title: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle Home menu item tap
                      },
                    ),
                    ListTile(
                      title: Text(
                        'About Us',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle About Us menu item tap
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Contact Us',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle Contact Us menu item tap
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle Settings menu item tap
                      },
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
