import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HighlightNews extends GetView<DesktopHomeController> {
  const HighlightNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      decoration: const BoxDecoration(color: Colors.black12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1, color: Colors.black26))),
            child: const FaIcon(
              FontAwesomeIcons.bolt,
              size: 16,
            ),
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
