import '../../../app/data/constants/extensions/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../data/constants/color_constant.dart';
import '../../routes/app_pages.dart';
import 'common_button.dart';

// ignore: must_be_immutable
class BottomSheetStatus extends StatelessWidget {
  final bool isSuccess;
  String? title;
  final bool hasButton;
  final bool isLogin;

  BottomSheetStatus(
      {Key? key,
      required this.isSuccess,
      this.title,
      required this.hasButton,
      this.isLogin = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              (Get.height * 0.03).height,
              Text(
                isSuccess ? 'Success' : 'Failed',
                style:
                    context.textTheme.headline3!.copyWith(color: Colors.grey),
              ),
              (Get.height * 0.03).height,
              LottieBuilder.asset(
                isSuccess
                    ? 'assets/images/lottie_success.json'
                    : 'assets/images/lottie_error.json',
                fit: BoxFit.fill,
                width: Get.width * 0.5,
                height: Get.width * 0.5,
              ),
              (Get.height * 0.03).height,
              Text(
                title ??
                    (isSuccess
                        ? 'Password has been updated'
                        : 'Sorry, we are unable to process your request'),
                textAlign: TextAlign.center,
                style:
                    context.textTheme.headline6!.copyWith(color: Colors.grey),
              ),
              (Get.height * 0.03).height,
              hasButton
                  ? CommonButton(
                      title: isLogin
                          ? 'Back to login page'
                          : isSuccess
                              ? 'Done'
                              : 'Back',
                      callBack: () =>
                          isLogin ? Get.toNamed(Routes.HOME) : Get.back(),
                      buttonColor: isSuccess
                          ? ColorConstant.successColor
                          : ColorConstant.commonPink,
                    )
                  : Container()
            ],
          ).paddingAll(Get.width * 0.04),
        ));
  }
}
