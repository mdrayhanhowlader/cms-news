import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../data/constants/extensions/decoration_extensions.dart';
import '../../data/constants/extensions/text_style_extensions.dart';
import '../../data/constants/extensions/string_extensions.dart';
import '../../data/constants/constant.dart';
import '../../data/constants/extensions/int_extensions.dart';

enum PageRouteAnimation { Fade, Scale, Rotate, Slide, SlideBottomTop }

bool hasMatch(String? s, String p) {
  return (s == null) ? false : RegExp(p).hasMatch(s);
}

/// Toast for default time
void toast(
  String? value, {
  ToastGravity? gravity,
  length = Toast.LENGTH_SHORT,
  Color? bgColor,
  Color? textColor,
}) {
  if (value.validate().isEmpty) {
    print(value);
  } else {
    Fluttertoast.showToast(
      msg: value.validate(),
      gravity: gravity,
      toastLength: length,
      backgroundColor: bgColor,
      textColor: textColor,
    );
  }
}

void toasty(
  BuildContext context,
  String? text, {
  ToastGravity? gravity,
  length = Toast.LENGTH_SHORT,
  Color? bgColor,
  Color? textColor,
  bool print = false,
  bool removeQueue = false,
  Duration? duration,
  BorderRadius? borderRadius,
  EdgeInsets? padding,
}) {
  FToast().init(context);
  if (removeQueue) FToast().removeCustomToast();

  Color defaultToastBackgroundColor = Colors.grey.shade200;
  Color defaultToastTextColor = Colors.black;
  ToastGravity defaultToastGravityGlobal = ToastGravity.CENTER;
  BorderRadius defaultToastBorderRadiusGlobal = radius(30);

  FToast().showToast(
    child: Container(
      child: Text(text.validate(),
          style: boldTextStyle(color: textColor ?? defaultToastTextColor)),
      decoration: BoxDecoration(
        color: bgColor ?? defaultToastBackgroundColor,
        boxShadow: defaultBoxShadow(),
        borderRadius: borderRadius ?? defaultToastBorderRadiusGlobal,
      ),
      padding: padding ?? EdgeInsets.symmetric(vertical: 16, horizontal: 30),
    ),
    gravity: gravity ?? defaultToastGravityGlobal,
    toastDuration: duration ?? Duration(seconds: 4),
  );
}

/// Toast for long period of time
void toastLong(
  String? value, {
  BuildContext? context,
  ToastGravity gravity = ToastGravity.BOTTOM,
  length = Toast.LENGTH_LONG,
  Color? bgColor,
  Color? textColor,
}) {
  toast(
    value,
    gravity: gravity,
    bgColor: bgColor,
    textColor: textColor,
    length: length,
  );
}

/// Show SnackBar
void snackBar(
  BuildContext context, {
  String title = '',
  Widget? content,
  SnackBarAction? snackBarAction,
  Function? onVisible,
  Color? textColor,
  Color? backgroundColor,
  EdgeInsets? margin,
  EdgeInsets? padding,
  Animation<double>? animation,
  double? width,
  ShapeBorder? shape,
  Duration? duration,
  SnackBarBehavior? behavior,
  double? elevation,
}) {
  if (title.isEmpty && content != null) {
    print('SnackBar message is empty');
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        action: snackBarAction,
        margin: margin,
        animation: animation,
        width: width,
        shape: shape,
        duration: 4.second,
        behavior: margin != null ? SnackBarBehavior.floating : behavior,
        elevation: elevation,
        onVisible: onVisible?.call(),
        content: content ??
            Padding(
              padding: padding ?? EdgeInsets.symmetric(vertical: 4),
              child: Text(
                title,
                style: primaryTextStyle(color: textColor ?? Colors.white),
              ),
            ),
      ),
    );
  }
}

/// Hide soft keyboard
void hideKeyboard(context) => FocusScope.of(context).requestFocus(FocusNode());

/// Returns a string from Clipboard
Future<String> paste() async {
  ClipboardData? data = await Clipboard.getData('text/plain');
  return data?.text?.toString() ?? "";
}

/// Returns a string from Clipboard
Future<dynamic> pasteObject() async {
  ClipboardData? data = await Clipboard.getData('text/plain');
  return data;
}

enum LinkProvider {
  PLAY_STORE,
  APPSTORE,
  FACEBOOK,
  INSTAGRAM,
  LINKEDIN,
  TWITTER,
  YOUTUBE,
  TELEGRAM,
  WHATSAPP,
  FB_MESSENGER
}

String? getSocialMediaLink(LinkProvider linkProvider, {String url = ''}) {
  switch (linkProvider) {
    case LinkProvider.PLAY_STORE:
      return "${ConstantValue.playStoreBaseURL}$url";
    case LinkProvider.APPSTORE:
      return "${ConstantValue.appStoreBaseURL}$url";
    case LinkProvider.FACEBOOK:
      return "${ConstantValue.facebookBaseURL}$url";
    case LinkProvider.INSTAGRAM:
      return "${ConstantValue.instagramBaseURL}$url";
    case LinkProvider.LINKEDIN:
      return "${ConstantValue.linkedinBaseURL}$url";
    case LinkProvider.TWITTER:
      return "${ConstantValue.twitterBaseURL}$url";
    case LinkProvider.YOUTUBE:
      return "${ConstantValue.youtubeBaseURL}$url";
    case LinkProvider.TELEGRAM:
      return "${ConstantValue.telegramBaseURL}$url";
    case LinkProvider.WHATSAPP:
      return "${ConstantValue.facebookMessengerURL}$url";
    case LinkProvider.FB_MESSENGER:
      return "${ConstantValue.whatsappURL}$url";
    default:
      return null;
  }
}

const double degrees2Radians = pi / 180.0;

double radians(double degrees) => degrees * degrees2Radians;

// void afterBuildCreated(Function()? onCreated) {
//   SchedulerBinding.instance!.addPostFrameCallback((_) => onCreated?.call());
// }

