import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakingNews extends GetView<DesktopHomeController> {
  const BreakingNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: const EdgeInsets.only(top: 30, bottom: 200),
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(width: 1, color: Colors.black),
        // bottom: BorderSide(width: 1, color: Colors.black)
      )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.15,
                child: PoppinsText(
                  title: 'BREAKING NEWS',
                  size: 20,
                  color: Colors.black,
                  weight: FontWeight.w700,
                ),
              ),
              Container(
                width: Get.width * 0.55,
                decoration: const BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 1, color: Colors.black))),
              ),
              Container(
                width: Get.width * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.arrow_back),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              Container(
                width: Get.width * 0.1,
                decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 1, color: Colors.black))),
              )
            ],
          )
        ],
      ),
    );
  }
}
