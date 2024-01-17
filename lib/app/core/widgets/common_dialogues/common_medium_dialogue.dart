import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonMediumDialogue extends StatelessWidget {
  final Widget view;
  final Widget? titleWidget;

  const CommonMediumDialogue({super.key, required this.view, this.titleWidget});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
      child: Container(
        child: AlertDialog(
          contentPadding: EdgeInsets.all(0.7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 0,
          title: titleWidget,
          content: Container(
            width: Get.width * 0.45,
            height: Get.width * 0.3,
            child: view,
          ),
        ),
      ),
    );
  }
}
