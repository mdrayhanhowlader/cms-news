import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/widgets/copywrite_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/common_bottombar_controller.dart';

class CommonBottombarView extends GetView<CommonBottombarController> {
  const CommonBottombarView({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Text('data'),
          ),
          const Material(
            child: CopywriteText(),
          )
        ],
      ),
    ));
  }
}
