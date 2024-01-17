// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:cmsecommerce/app/core/language/localization_services.dart';
// import 'package:cmsecommerce/app/core/services/local_db_services/local_db_services.dart';
// import 'package:cmsecommerce/app/core/services/theme_services/themes_data.dart';
// import 'package:cmsecommerce/app/core/widgets/poppins_text.dart';
// import 'package:cmsecommerce/app/core/widgets/squre_icon_btn.dart';
// import 'package:cmsecommerce/app/core/widgets/theme_text.dart';
// import 'package:cmsecommerce/app/data/constants/color_constant.dart';
// import 'package:cmsecommerce/app/data/constants/extensions/double_extension.dart';
// // import 'package:cmsecommerce/app/modules/navigations/controllers/navigations_controller.dart';

// class CommonAppBar extends GetView<NavigationsController>
//     implements PreferredSizeWidget {
//   final String title;
//   final String image;

//   CommonAppBar({
//     required this.title,
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return AppBar(
//         toolbarHeight: 70,
//         elevation: 0,
//         backgroundColor: ColorConstant.transparentColor,
//         title: Row(
//           children: [
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Image.network(
//                 image,
//                 scale: 2,
//                 fit: BoxFit.cover,
//                 errorBuilder: (context, url, error) => Image.asset(
//                   'assets/images/appbar_icon/default_logo.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             ThemeText(
//               title: title,
//               size: 20,
//               weight: FontWeight.w500,
//             ),
//           ],
//         ),
//         actions: [
//           Container(
//             clipBehavior: Clip.antiAlias,
//             margin: EdgeInsets.symmetric(vertical: 14, horizontal: 3.8),
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             decoration: BoxDecoration(
//               color: Theme.of(context).colorScheme.secondary,
//               borderRadius: BorderRadius.circular(12.0),
//               boxShadow: [
//                 BoxShadow(
//                   color: Color(0x0C000000),
//                   blurRadius: 10,
//                   offset: Offset(0, 2),
//                   spreadRadius: 0,
//                 )
//               ],
//             ),
//             child: DropdownButton(
//               dropdownColor: Theme.of(context).colorScheme.secondary,
//               value: controller.selectedLanguage.value,
//               alignment: AlignmentDirectional.center,
//               underline: Container(),
//               items: controller.languages
//                   .map((e) => DropdownMenuItem(
//                         value: e.value,
//                         child: Row(
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(100),
//                               child: Image.asset(
//                                 e.image,
//                                 height: 25,
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             ThemeText(
//                               title: e.title,
//                               size: 12,
//                             ),
//                           ],
//                         ),
//                       ))
//                   .toList(),
//               onChanged: (value) {
//                 controller.selectedLanguage.value = value!;
//                 LocalizationService()
//                     .changeLocale(controller.selectedLanguage.value);
//               },
//               hint: ThemeText(
//                 title: 'Languages',
//                 size: 12,
//               ),
//             ),
//           ),
//           SquareIconBtn(
//             isDrawer: false,
//             src: controller.darkModeImg.value,
//             action: () {
//               ThemesData.switchThemes();
//               // print();
//               controller.switchThemeIcon();
//             },
//           ),
//           SquareIconBtn(
//             isDrawer: false,
//             src: 'assets/images/appbar_icon/book.png',
//             action: () {
//               print('new widget working');
//             },
//           ),
//           SquareIconBtn(
//             isDrawer: false,
//             src: 'assets/images/appbar_icon/chat.png',
//             action: () {
//               // LocalizationService().changeLocale('Bahasa Malaysia');
//               // print('Change language function clicked');
//             },
//           ),
//           SquareIconBtn(
//             isDrawer: false,
//             src: 'assets/images/appbar_icon/notification.png',
//             action: () {
//               print('new widget working');
//             },
//           ),
//           (Get.width * 0.008).width,
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               ThemeText(
//                 title: 'hello'.tr,
//                 size: 16,
//               ),
//               ThemeText(
//                 title:
//                     ' ${Get.find<LocalDBService>().getLoginData()!.userName}',
//                 size: 10,
//               ),
//             ],
//           ),
//           if (controller.userImageError.isFalse)
//             SizedBox(
//               height: 70,
//               width: 70,
//               child: IconButton(
//                 onPressed: () {
//                   print('Circular image clicked');
//                 },
//                 icon: CircleAvatar(
//                   backgroundColor: Colors.transparent,
//                   backgroundImage: NetworkImage(
//                       controller.localDB.getLoginData()!.userImage.toString()),
//                   onBackgroundImageError: (exception, stackTrace) {
//                     controller.userImageError(true);
//                   },
//                 ),
//               ),
//             ),
//           if (controller.userImageError.isTrue)
//             Container(
//               width: 40,
//               height: 40,
//               margin: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: ColorConstant.primaryColor,
//               ),
//               child: Center(
//                 child: PoppinsText(
//                   title:
//                       '${controller.localDB.getLoginData()!.userName.toString().split(' ')[0].substring(0, 1)}',
//                   size: 16,
//                   color: Colors.white,
//                   weight: FontWeight.w600,
//                 ),
//               ),
//             ),
//         ],
//       );
//     });
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight + 14);
// }
