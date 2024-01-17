import '../../app/data/constants/extensions/double_extension.dart';
import '../../app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/widgets/poppins_text.dart';
import '../data/constants/color_constant.dart';

Future<void> showColorInfoDialogue({required context, voidCallback}) async {
  showDialog<void>(
    context: context,

    // barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0,
        content: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Icon(Icons.cancel_outlined).onTap(() => Get.close(1)),
              ListBody(
                children: <Widget>[
                  Indicatior(
                    dayType: 'Weekday',
                    color: Colors.white,
                  ),
                  Indicatior(
                    dayType: 'Weekend',
                    color: Colors.blue.shade200,
                  ),
                  Indicatior(
                    dayType: 'Public Holiday',
                    color: Colors.orange.shade200,
                  ),
                  Indicatior(
                    dayType: 'Special Holiday',
                    color: Colors.grey.shade200,
                  ),
                  Indicatior(
                    dayType: 'Semester Break',
                    color: Colors.pink.shade200,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
  VoidCallback;
}

class Indicatior extends StatelessWidget {
  Indicatior({
    Key? key,
    required this.dayType,
    required this.color,
  }) : super(key: key);

  String dayType;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.fiber_manual_record,
          size: Get.width * 0.040,
          color: color,
          shadows: [
            BoxShadow(
              color: Colors.grey.shade500,
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        (Get.width * 0.01).width,
        PoppinsText(
          title: dayType,
          size: Get.width * 0.028,
          weight: FontWeight.w300,
          color: ColorConstant.gray,
        ),
      ],
    ).marginOnly(bottom: Get.width * 0.03);
  }
}
