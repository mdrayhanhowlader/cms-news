import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonLargeDialogue extends StatelessWidget {
  final Widget view;

  const CommonLargeDialogue({super.key, required this.view});

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
          content: Container(
            width: Get.width * 0.6,
            height: Get.width * 0.428,
            child: view,
          ),
        ),
      ),
    );
  }
}
