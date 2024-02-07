import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_appbar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_bottom_bar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_highlight_news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/objective_controller.dart';

class ObjectiveView extends GetView<ObjectiveController> {
  const ObjectiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _htmlContent = """
<div>Hello world</div>
""";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildAppBar(),
            const SizedBox(height: 10),
            _buildHighlight(),
            const SizedBox(height: 10),
            const SizedBox(height: 50),
            Container(
              width: Get.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImage('assets/images/objective/objective1.png'),
                  const SizedBox(height: 5),
                  _buildImage('assets/images/objective/objective2.png'),
                  const SizedBox(height: 5),
                  _buildImage('assets/images/objective/objective3.png'),
                  const SizedBox(height: 50),
                ],
              ),
            ),
            _buildBottomBar()
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Container(height: 160, child: const MobileAppbar());
        } else {
          return const CommonAppbarView();
        }
      },
    );
  }

  Widget _buildHighlight() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileHighlightNews();
        } else {
          return const HighlightNews();
        }
      },
    );
  }

  Widget _buildBottomBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileBottomBar();
        } else {
          return const CommonBottombarView();
        }
      },
    );
  }

  Widget _buildImage(String imagePath) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
