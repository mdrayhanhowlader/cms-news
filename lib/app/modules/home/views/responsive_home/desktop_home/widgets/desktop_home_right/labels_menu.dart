import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LabelsMenu extends GetView<DesktopHomeController> {
  const LabelsMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    DesktopHomeController controller = Get.put(DesktopHomeController());
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Get.width * 0.1,
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: PoppinsText(
                    title: 'Labels',
                    color: Colors.white,
                    spacing: 0.5,
                  ),
                ),
                Container(
                  width: Get.width * 0.19,
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 1, color: Colors.black))),
                ),
              ],
            ),
          ),
          // Demo Menu
          SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(
              10,
              (index) => GetBuilder<DesktopHomeController>(
                builder: (controller) {
                  final isHovered = controller.hoveredDemoIndex == index;

                  return InkWell(
                    onTap: () {
                      // Handle menu item click here
                      print('Demo $index clicked');
                    },
                    onHover: (hovering) {
                      // Call the controller method to update hovered index
                      controller.updateHoveredDemoIndex(index, hovering);
                    },
                    child: Container(
                      color: isHovered ? Colors.grey : Colors.transparent,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: EdgeInsets.only(left: isHovered ? 10 : 0),
                        padding: EdgeInsets.symmetric(
                          horizontal: isHovered ? 50 : 10,
                          vertical: 5,
                        ),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.angleRight,
                              color:
                                  isHovered ? Colors.blue : Color(0XFFFF6000),
                              size: 12,
                            ),
                            const SizedBox(width: 5),
                            PoppinsText(
                              title: 'Demo $index',
                              color: Color(0XFF000000),
                              size: 12,
                              weight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
