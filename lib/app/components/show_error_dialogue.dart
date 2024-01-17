import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/widgets/poppins_text.dart';
import '../data/constants/color_constant.dart';

Future<void> showErrorDialog(
    {required context, required text, VoidCallback}) async {
  showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0,
        title: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Icon(
              Icons.error_rounded,
              color: ColorConstant.errorColor,
              size: 40.0,
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              PoppinsText(
                title: text,
                size: Get.width * 0.04,
                weight: FontWeight.normal,
                color: ColorConstant.errorColor,
                align: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    },
  );
  VoidCallback ??
      Future.delayed(const Duration(milliseconds: 1500), () {
        Get.close(1);
      });
}
