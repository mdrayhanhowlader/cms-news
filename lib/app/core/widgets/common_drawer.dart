// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:cmsecommerce/app/core/widgets/squre_icon_btn.dart';
// import 'package:cmsecommerce/app/routes/app_pages.dart';

// class DrawerWidget extends StatelessWidget {
//   DrawerWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.only(
//         topRight: Radius.circular(10),
//       ),
//       child: Drawer(
//         width: 72,
//         child: ListView(
//           children: [
//             SizedBox(
//               height: 5,
//             ),
//             SquareIconBtn(
//               src: 'assets/images/drawer_icon/home.png',
//               action: () {
//                 Get.offNamed(Routes.BUSINESS);
//               },
//             ),
//             SquareIconBtn(
//               src: 'assets/images/drawer_icon/icon1.png',
//               action: () {
//                 Get.offNamed(Routes.NAVIGATIONS);
//               },
//             ),
//             SquareIconBtn(
//               src: 'assets/images/drawer_icon/icon3.png',
//               action: () {},
//             ),
//             SquareIconBtn(
//               src: 'assets/images/drawer_icon/icon11.png',
//               action: () {},
//             ),
//             SquareIconBtn(
//               src: 'assets/images/drawer_icon/icon12.png',
//               action: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
