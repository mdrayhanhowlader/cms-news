import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:path_provider/path_provider.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:http/http.dart' as http;

class NotificationService {
  // Singleton pattern
  static final NotificationService _notificationService =
  NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  static const channelId = "1";
  static const channelIdWithBigPicture = "2";
  static const channelIdWithSound = "3";
  static const channelIdWithLargeIcon = "4";
  static const channelIdWithHiddenLargeIconWithBigPic = "5";

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static final AndroidNotificationDetails _androidNotificationDetails =
  AndroidNotificationDetails(
    channelId,
    "Common Notification",
    channelDescription: "This is common notification for this apps",
    playSound: true,
    priority: Priority.high,
    importance: Importance.max,
  );

  static final DarwinNotificationDetails _iOSNotificationDetails =
  DarwinNotificationDetails();

  final NotificationDetails notificationDetails = NotificationDetails(
    android: _androidNotificationDetails,
    iOS: _iOSNotificationDetails,
  );

  Future<void> init() async {
    final AndroidInitializationSettings androidInitializationSettings =
    AndroidInitializationSettings("icon");

    final DarwinInitializationSettings iOSInitializationSettings =
    DarwinInitializationSettings(
      defaultPresentAlert: false,
      defaultPresentBadge: false,
      defaultPresentSound: false,
    );

    final InitializationSettings initializationSettings =
    InitializationSettings(
      android: androidInitializationSettings,
      iOS: iOSInitializationSettings,
    );

    // *** Initialize timezone here ***
    tz.initializeTimeZones();

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      // onSelectNotification: onSelectNotification,
    );
  }

  Future<void> requestIOSPermissions() async {
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<void> showNotification(
      int id, String title, String body, String payload) async {
    await flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      notificationDetails,
      payload: payload,
    );
  }

  Future<void> showNotificationCustomSound(
      String title, String body, int id, bool longSound, String payload) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      channelIdWithSound,
      'Max priority Notification',
      channelDescription: 'This notification channel may have different sound',
      sound: RawResourceAndroidNotificationSound(
          longSound ? 'hudhud_noti' : 'hudhud_ori'),
      priority: Priority.high,
      importance: Importance.max,
    );
    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
    DarwinNotificationDetails(sound: 'slow_spring_board.aiff');

    final NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      payload: payload,
      platformChannelSpecifics,
    );
  }

  Future<Uint8List> _getByteArrayFromUrl(String url) async {
    final http.Response response = await http.get(Uri.parse(url));
    return response.bodyBytes;
  }

  Future<String> _downloadAndSaveFile(String url, String fileName) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final String filePath = '${directory.path}/$fileName';
    final http.Response response = await http.get(Uri.parse(url));
    final File file = File(filePath);
    await file.writeAsBytes(response.bodyBytes);
    return filePath;
  }

  Future<void> showAndroidNotificationCustomVibrationLargeIconLed(
      int id, String title, String body, String payload) async {
    final Int64List vibrationPattern = Int64List(4);
    vibrationPattern[0] = 0;
    vibrationPattern[1] = 1000;
    vibrationPattern[2] = 5000;
    vibrationPattern[3] = 2000;

    final AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
        channelIdWithLargeIcon, 'Custom Vibration & LED',
        channelDescription:
        'This notification has custom vibration pattern and custom LED light colour',
        icon: 'icon',
        visibility: NotificationVisibility.public,
        largeIcon: const DrawableResourceAndroidBitmap('icon'),
        vibrationPattern: vibrationPattern,
        enableLights: true,
        priority: Priority.high,
        importance: Importance.max,
        ledColor: const Color.fromARGB(255, 255, 0, 0),
        ledOnMs: 1000,
        ledOffMs: 500);

    final NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        id, title, body, payload: payload, platformChannelSpecifics);
  }

  Future<void> showBigPictureNotificationHiddenLargeIcon(
      String largeIcon,
      String bigPicture,
      String expandedTitle,
      String expandedBody,
      String title,
      String body,
      String payload,
      int id) async {
    final String largeIconPath =
    await _downloadAndSaveFile(largeIcon, 'largeIcon');
    final String bigPicturePath =
    await _downloadAndSaveFile(bigPicture, 'bigPicture');
    final BigPictureStyleInformation bigPictureStyleInformation =
    BigPictureStyleInformation(FilePathAndroidBitmap(bigPicturePath),
        hideExpandedLargeIcon: true,
        contentTitle: expandedTitle,
        htmlFormatContentTitle: true,
        summaryText: expandedBody,
        htmlFormatSummaryText: true);
    final AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
        channelIdWithHiddenLargeIconWithBigPic, 'Notification with images',
        channelDescription:
        'This notification will notify user of the apps with the news and the picture',
        largeIcon: FilePathAndroidBitmap(largeIconPath),
        priority: Priority.high,
        importance: Importance.max,
        styleInformation: bigPictureStyleInformation);

    DarwinNotificationAttachment attachment = DarwinNotificationAttachment(
        await _downloadAndSaveFile(largeIcon, 'largeIcon'));
    final DarwinNotificationDetails iOSPlatformChannelSpecifics =
    DarwinNotificationDetails(attachments: [attachment]);
    final NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        id, title, body, payload: payload, platformChannelSpecifics);
  }

  Future<void> scheduleNotification(int id, String title, String body,
      DateTime eventDate, TimeOfDay eventTime, String payload,
      [DateTimeComponents? dateTimeComponents]) async {
    final scheduledTime = eventDate.add(Duration(
      hours: eventTime.hour,
      minutes: eventTime.minute,
    ));
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(scheduledTime, tz.local),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
      payload: payload,
      matchDateTimeComponents: dateTimeComponents,
    );
  }

  Future<void> cancelNotification(int id) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }

  Future<void> cancelAllNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }
}

Future<void> onSelectNotification(String? payload) async {
  // await navigatorKey.currentState
  //     ?.push(MaterialPageRoute(builder: (_) => DetailsPage(payload: payload)));
}
