import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/controllers/home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_left/breaking_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_home_main.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopHome extends GetView<HomeController> {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppbarView(),
            SizedBox(
              height: 20,
            ),
            HighlightNews(),
            SizedBox(
              height: 100,
            ),
            BreakingNews(),
            SizedBox(
              height: 30,
            ),
            DesktopHomeMain(),
            SizedBox(
              height: 20,
            ),
            CommonBottombarView()
          ],
        ),
      ),
    );
  }
}
// class DesktopHome extends GetView<HomeController> {
//   const DesktopHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(200.0), // Adjust the height accordingly
//         child: CommonAppbarView(),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             CommonAppbarView(),
//             SizedBox(
//               height: 100,
//             ),
//             BreakingNews(),
//             SizedBox(
//               height: 30,
//             ),
//             DesktopHomeMain(),
//             SizedBox(
//               height: 20,
//             ),
//             CommonBottombarView()
//           ],
//         ),
//       ),
//     );
//   }
// }
