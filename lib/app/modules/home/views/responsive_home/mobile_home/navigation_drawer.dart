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
                  child: const Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 30,
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
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0XFFFF6000),
                          ),
                        ),
                      ),
                      child: PoppinsText(
                        title: 'Top Menu',
                        size: 18,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Primary menu
                    Column(
                      children: [
                        Obx(() {
                          return MouseRegion(
                            onEnter: (event) {
                              controller.setHoverState(true);
                            },
                            onExit: (event) {
                              controller.setHoverState(false);
                            },
                            onHover: (event) {
                              controller.setHoverState(true);
                            },
                            child: InkWell(
                              onHover: (value) {},
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 1,
                                      color: controller.isHovered.value
                                          ? Colors.red // Change color on hover
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PoppinsText(
                                      title: 'MAIN',
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    const FaIcon(
                                      FontAwesomeIcons.angleDown,
                                      color: Colors.red,
                                      size: 16,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                    // Secondary menu title
                    const SizedBox(
                      height: 30,
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
                        size: 18,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
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
