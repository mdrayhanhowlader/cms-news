import 'package:flutter/material.dart';
import '../../data/constants/extensions/double_extension.dart';
import 'package:get/get.dart';

import '../../data/constants/color_constant.dart';
import 'common_button.dart';

// ignore: must_be_immutable
class CommonNoDataError extends StatelessWidget {
  String text;
  final VoidCallback? callback;
  final String? titleButton;
  final Color? color;

  CommonNoDataError(
      {Key? key,
      required this.text,
      this.callback,
      this.titleButton,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: Get.width,
              height: Get.width * 0.5,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.35,
                        height: constraints.maxWidth * 0.3,
                        margin: EdgeInsets.only(
                            bottom: constraints.maxHeight * 0.1,
                            right: constraints.maxWidth * 0.06),
                      ),
                      Icon(
                        Icons.search_sharp,
                        size: Get.width * 0.4,
                        color: color ?? ColorConstant.primaryColor,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: constraints.maxWidth * 0.08,
                            bottom: constraints.maxHeight * 0.18),
                        child: Icon(
                          Icons.question_mark,
                          color: color ?? ColorConstant.primaryColor,
                          size: Get.width * 0.1,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sorry,",
                    style: context.textTheme.headline3!.copyWith(
                      color: color ?? ColorConstant.primaryColor,
                    ),
                  ),
                  (Get.width * 0.03).height,
                  Text(text,
                      style: context.textTheme.headline6!.copyWith(
                        color: color ?? ColorConstant.primaryColor,
                      ))
                ],
              ),
            ),
            if (callback != null)
              CommonButton(title: titleButton ?? "", callBack: callback!)
                  .marginSymmetric(
                      horizontal: Get.width * 0.08, vertical: Get.width * 0.1)
          ],
        ),
      ],
    );
  }
}
