import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileBottomBar extends GetView<MobileHomeController> {
  const MobileBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF292929),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            width: Get.width * 0.9,
            alignment: Alignment.center,
            child: Image.asset('assets/images/logo/bottom-logo.png'),
          ),
          Container(
            child: PoppinsText(
              title:
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
              size: 12,
              weight: FontWeight.w400,
              spacing: 0.5,
              color: Colors.white,
              align: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width * 0.95,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0XFFFF6000)))),
            child: PoppinsText(
              title: 'ADDRESS:',
              align: TextAlign.start,
              size: 18,
              color: const Color(0XFFFF6000),
              weight: FontWeight.w600,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 30),
            child: PoppinsText(
              title:
                  'No 5,1, Jalan USJ 1/1a Regalia Center 47600, Selangor, Malaysia.',
              size: 14,
              weight: FontWeight.w400,
              spacing: 0.5,
              color: Colors.white,
              align: TextAlign.left,
            ),
          ),
          Container(
            width: Get.width * 0.95,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0XFFFF6000)))),
            child: PoppinsText(
              title: 'CONTACT:',
              align: TextAlign.start,
              size: 18,
              color: const Color(0XFFFF6000),
              weight: FontWeight.w600,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
            child: PoppinsText(
              title:
                  'No 5,1, Jalan USJ 1/1a Regalia Center 47600, Selangor, Malaysia.',
              size: 14,
              weight: FontWeight.w400,
              spacing: 0.5,
              color: Colors.white,
              align: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
