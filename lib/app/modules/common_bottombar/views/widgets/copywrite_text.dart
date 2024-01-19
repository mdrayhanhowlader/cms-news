import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/controllers/common_bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CopywriteText extends GetView<CommonBottombarController> {
  const CopywriteText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: Get.width,
      color: Colors.black,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.copyright,
            size: 12,
            color: Color.fromARGB(218, 255, 255, 255),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '2023 DEVELOPMENT/UPGRADING CMS MODULE POWERD BY AWFATECH',
            style: TextStyle(
                color: Color.fromARGB(218, 255, 255, 255), fontSize: 12),
          )
        ],
      ),
    );
  }
}
