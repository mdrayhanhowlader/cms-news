import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HighlightNews extends GetView<DesktopHomeController> {
  const HighlightNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: 40,
      decoration: const BoxDecoration(color: Color(0XFFE7E5E5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            width: 1,
                            color: const Color(0XFF292929).withOpacity(0.2)))),
                child: const FaIcon(
                  FontAwesomeIcons.bolt,
                  size: 16,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: const BoxDecoration(color: Color(0XFFFF6000)),
                child: PoppinsText(
                  title: 'NEWS',
                  size: 12,
                  color: Colors.white,
                  weight: FontWeight.w600,
                ),
              ),
              Container(
                child: AnimatedTextKit(animatedTexts: [
                  RotateAnimatedText(
                    'Title of the important news',
                    duration: const Duration(milliseconds: 3000),
                    transitionHeight: 40,
                  )
                ]),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(
                      width: 1,
                      color: const Color(0XFF292929).withOpacity(0.2)),
                  left: BorderSide(
                      width: 1,
                      color: const Color(0XFF292929).withOpacity(0.2)),
                )),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: const FaIcon(
                  FontAwesomeIcons.angleUp,
                  size: 16,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: const FaIcon(
                  FontAwesomeIcons.angleDown,
                  size: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
