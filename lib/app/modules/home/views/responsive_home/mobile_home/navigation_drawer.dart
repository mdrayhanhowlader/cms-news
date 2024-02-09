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
                    Container(
                      width: Get.width,
                      child: DropdownButton<String>(
                        dropdownColor: Colors.black,
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
                            child: Text('INFO'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'BRANCH',
                            child: Text('BRANCH'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'E-ALUMNI',
                            child: Text('E-ALUMNI'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'LINK',
                            child: Text('LINK'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'E-CAREER',
                            child: Text('E-CAREER'),
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
