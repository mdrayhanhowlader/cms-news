import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/objective_controller.dart';

class ObjectiveView extends GetView<ObjectiveController> {
  const ObjectiveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const CommonAppbarView(),
          const SizedBox(
            height: 10,
          ),
          const HighlightNews(),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: Get.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/images/objective/objective1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/images/objective/objective2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/images/objective/objective3.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          const CommonBottombarView()
        ],
      ),
    ));
  }
}
