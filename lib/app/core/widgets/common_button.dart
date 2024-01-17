import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/constants/color_constant.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback callBack;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final IconData? iconData;
  final BorderRadius? borderRadius;
  CommonButton(
      {Key? key,
      required this.title,
      required this.callBack,
      this.buttonColor,
      this.iconData,
      this.buttonTextColor,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callBack,
      child: Container(
        height: Get.height * 0.05,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              iconData != null
                  ? Icon(
                      iconData,
                      color: buttonTextColor ?? Colors.white,
                    ).marginOnly(right: 10)
                  : Container(),
              Text(
                title,
                style: context.textTheme.bodyMedium!.copyWith(
                  color: buttonTextColor ?? Colors.white,
                  fontSize: 16,
                  letterSpacing: 0.60,
                ),
              ),
            ],
          ),
        ),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              buttonColor ?? ColorConstant.primaryColor)),
    );
  }
}
