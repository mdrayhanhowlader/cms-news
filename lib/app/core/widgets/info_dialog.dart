import 'package:flutter/material.dart';
import '../../data/constants/extensions/double_extension.dart';
import 'package:get/get.dart';

import '../../data/constants/color_constant.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({
    Key? key,
    required this.title,
    required this.info,
    required this.confirmText,
    this.cancelText,
    this.cancelCallback,
    this.confirmCallback,
    this.confirmButtonColor,
    this.cancelButtonColor,
    this.icon,
    this.confirmIcon,
    this.cancelIcon,
  }) : super(key: key);

  final String title;
  final String info;
  final String confirmText;
  final String? cancelText;
  final VoidCallback? cancelCallback;
  final VoidCallback? confirmCallback;
  final Color? confirmButtonColor;
  final Color? cancelButtonColor;
  final Widget? icon;
  final IconData? confirmIcon;
  final IconData? cancelIcon;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Material(
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: Get.width * 0.8,
              maxWidth: Get.width * 0.83,
            ),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  icon != null ? (Get.width * 0.04).height : Container(),
                  Center(child: icon ?? Container()),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: (Get.width * 0.55) * 0.1,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text(info,
                            style: TextStyle(
                                fontSize: (Get.width * 0.8) * 0.045,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600])),
                      ],
                    ),
                  ),
                  // Spacer(),
                  Center(
                    child: Container(
                      width: Get.width * 0.7,
                      margin: EdgeInsets.only(bottom: Get.width * 0.04),
                      child: ElevatedButton(
                        onPressed: confirmCallback ??
                            () {
                              if (Get.isDialogOpen!) {
                                Get.back();
                              }
                            },
                        child: Container(
                          height: Get.height * 0.07,
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                confirmIcon != null
                                    ? Icon(
                                        confirmIcon,
                                        color: Colors.white,
                                      ).marginOnly(right: Get.width * 0.03)
                                    : Container(),
                                Text(
                                  confirmText,
                                  style: context.textTheme.headline6!.copyWith(
                                      color: Colors.white,
                                      fontSize: Get.width * 0.045),
                                ),
                              ],
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                confirmButtonColor ??
                                    ColorConstant.primaryColor)),
                      ),
                    ),
                  ),
                  cancelText == null
                      ? Container()
                      : Center(
                          child: Container(
                            width: Get.width * 0.7,
                            margin: EdgeInsets.only(bottom: Get.width * 0.04),
                            child: ElevatedButton(
                              onPressed: cancelCallback ??
                                      () {
                                    if (Get.isDialogOpen!) {
                                      Get.back();
                                    }
                                  },
                              child: Container(
                                height: Get.height * 0.07,
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      cancelIcon != null
                                          ? Icon(
                                              cancelIcon,
                                              color: Colors.white,
                                            ).marginOnly(
                                              right: Get.width * 0.03)
                                          : Container(),
                                      Text(
                                        cancelText!,
                                        style: context.textTheme.headline6!
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: Get.width * 0.045),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          cancelButtonColor ?? Colors.grey)),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
