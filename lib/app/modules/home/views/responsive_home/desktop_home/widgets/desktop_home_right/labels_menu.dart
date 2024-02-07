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
    final isMobile = Get.width < 600;
    final titleWidth = isMobile ? Get.width * 0.4 : Get.width * 0.1;
    final borderWidth = isMobile ? Get.width * 0.53 : Get.width * 0.19;
    return Container(
      padding: const EdgeInsets.only(left: 10),
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
                  width: titleWidth,
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: PoppinsText(
                    title: 'Labels',
                    color: Colors.white,
                    spacing: 0.5,
                    align: TextAlign.center,
                  ),
                ),
                Container(
                  width: borderWidth,
                  decoration: const BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 1, color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          // Demo Menu
          const SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(
              10,
              (index) => Obx(
                () {
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
                      color:
                          isHovered ? Colors.grey.shade100 : Colors.transparent,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: EdgeInsets.only(left: isHovered ? 10 : 0),
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.angleRight,
                              color: Color(0XFFFF6000),
                              size: 14,
                            ),
                            const SizedBox(width: 5),
                            PoppinsText(
                              title: 'Demo $index',
                              color: isHovered
                                  ? const Color(0XFFFF6000)
                                  : const Color(0XFF000000),
                              size: 14,
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
