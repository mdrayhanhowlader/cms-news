// import 'dart:convert';
// import 'dart:io';

// import '/app/core/services/push_notification_services/local_notification_services.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../routes/app_pages.dart';
// //import 'local_db_services/local_db_services.dart'; tutup sementara

// //final localDB = Get.find<LocalDBService>(); tutup sementara

// class CommonService {
//   static void goNextScreen() {
//     Future.delayed(3000.milliseconds, () {
//       // if (isLoggedIn() && !isFirstTime())
//       //   Get.offNamed(Routes.HOME);
//       // else
//       //   Get.offNamed(Routes.LOGIN);

//       print('xxx trigger goNextScreen common_service');
//       Get.offNamed(Routes.LOGIN);
//     });
//   }

//   static Future<void> firebaseMessageHandler() async {
//     ///gives you the message on which user taps
//     ///and it opened the app from terminated state
//     //final localDb = Get.find<LocalDBService>(); tutup sementara
//     final notiService = NotificationService();
//     // print('xxx 123 ');
//     await FirebaseMessaging.instance.getInitialMessage().then((message) {
//       if (message != null) {
//         print('xxx Message on Terminated : ' + jsonEncode(message.data));
//       }
//     });

//     ///foreground work
//     FirebaseMessaging.onMessage.listen((message) {
//       //print('xxx Message Listen on Foreground msg: ${message.toString()}');
//       DateTime now = new DateTime.now();

//       //tutup sementara
//       // var name = localDB.getLoginData()!.userName!;
//       // if (localDb.isLoggedIn()) {
//       //   if (Platform.isAndroid) {
//       //     //print('xxx Message on Foreground : ' + jsonEncode(message.notification));
//       //     print('xxx Message on Foreground Android: ${message.data}');
//       //     notiService.showNotification(
//       //         message.hashCode ?? 0,
//       //         message.data['title'] ?? 'Hi, $name',
//       //         message.data['body'] ?? 'You have received a new notification',
//       //         message.data['timestamp'] ?? now.toString());
//       //   } else {
//       //     print('xxx Message on Foreground IOS: ');
//       //     //print('xxx Message on Foreground ios : ${message.notification?.title}');
//       //     FirebaseMessaging.instance
//       //         .setForegroundNotificationPresentationOptions(
//       //             alert: true, badge: true, sound: true);

//       //     notiService.showNotification(
//       //         message.notification?.hashCode ?? 0,
//       //         message.notification?.title ?? '',
//       //         message.notification?.body ?? '',
//       //         '');

//       //     // print("Handling Message on Foreground ios : ${jsonEncode(message.data)}");
//       //     // notiService.showNotification(message.hashCode, message.data['title'],
//       //     //     message.data['body'], message.data['timestamp']);
//       //   }
//       // }
//       // tutup sementara
//     });

//     ///When the app is in background but opened and user taps
//     ///on the notification
//     ///
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {
//       if (message.notification != null) {
//         print('xxx Message on Background : ' + jsonEncode(message.data));
//       }
//     });
//   }

//   static bool isDarkColor(Color color) {
//     return ThemeData.estimateBrightnessForColor(color) == Brightness.light
//         ? false
//         : true;
//   }
// }
