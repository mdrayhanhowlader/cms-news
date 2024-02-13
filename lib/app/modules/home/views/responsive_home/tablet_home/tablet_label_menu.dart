import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TabletLabelMenu extends GetView<DesktopHomeController> {
  const TabletLabelMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    DesktopHomeController controller = Get.put(DesktopHomeController());

    return Container(
      width: Get.width * 0.3,
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildTitleRow(),
          const SizedBox(height: 10),
          _buildDemoMenu(controller),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      children: [
        Container(
          width: Get.width * 0.15,
          color: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: PoppinsText(
            title: 'Labels',
            color: Colors.white,
            spacing: 0.5,
            align: TextAlign.center,
          ),
        ),
        Container(
          width: Get.width * 0.13,
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.black)),
          ),
        ),
      ],
    );
  }

  Widget _buildDemoMenu(DesktopHomeController controller) {
    DesktopHomeController controller = Get.put(DesktopHomeController());

    return Column(
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
              child: MouseRegion(
                onEnter: (_) {
                  controller.updateHoveredDemoIndex(index, true);
                },
                onExit: (_) {
                  controller.updateHoveredDemoIndex(index, false);
                },
                child: Container(
                  color: isHovered ? Colors.grey.shade100 : Colors.transparent,
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
              ),
            );
          },
        ),
      ),
    );
  }
}
