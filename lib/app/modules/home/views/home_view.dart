import 'package:cms_maahadtahfizaddin/app/core/widgets/responsive/responsive_layout.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_home.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
        ),
        body: ResponsiveLayout(
          mobile: const MobileHomeView(),
          tablet: const TabletHomeView(),
          desktop: const DesktopHomeView(),
        ));
  }
}
