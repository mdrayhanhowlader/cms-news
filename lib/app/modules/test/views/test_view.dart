import 'package:cms_maahadtahfizaddin/app/modules/test/views/widgets/plutobar_menu.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/test_controller.dart';

class TestView extends GetView<TestController> {
  const TestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlutoMenuBarDemo(),
    );
  }
}
