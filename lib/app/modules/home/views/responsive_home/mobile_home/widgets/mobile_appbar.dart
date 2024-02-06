import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.95,
      child: Column(
        children: [
          Container(
            width: Get.width * 0.95,
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset('assets/images/logo/logo.png'),
          ),
        ],
      ),
    );
  }
}
