import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:get/get.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/theme_text.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/extensions/widget_extensions.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/size_constant.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawerMenu extends GetView<MobileHomeController> {
  const NavigationDrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MobileHomeController controller = Get.put(MobileHomeController());

    // Fake data for demonstration
    final fakeDivisionList = [
      YourObjectType(prm: 'Division A'),
      YourObjectType(prm: 'Division B'),
      YourObjectType(prm: 'Division C'),
    ];

    controller.listStaffThings.value = fakeDivisionList;

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
                        size: 18,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        Obx(() {
                          return Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.setHoverState(
                                    !controller.isHovered.value,
                                  );
                                },
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 1,
                                        color: controller.isHovered.isTrue
                                            ? Colors.red
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
                              if (controller.isHovered.isFalse)
                                Positioned(
                                  top: 60, // Adjust the position as needed
                                  left: 20, // Adjust the position as needed
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.red,
                                      ),
                                    ),
                                    child: PoppinsText(
                                      title: 'Dropdown Content',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          );
                        }),
                      ],
                    ),
                    const SizedBox(height: 30),
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
