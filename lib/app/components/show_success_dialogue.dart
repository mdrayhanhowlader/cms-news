import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/widgets/poppins_text.dart';
import '../data/constants/color_constant.dart';

Future<void> showSuccessDialog(
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
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Icon(
              Icons.check_circle,
              color: ColorConstant.successColor,
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
                color: ColorConstant.successColor,
                align: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    },
  );
  VoidCallback ??
      Future.delayed(const Duration(milliseconds: 1200), () {
        Get.close(1);
      });
}
