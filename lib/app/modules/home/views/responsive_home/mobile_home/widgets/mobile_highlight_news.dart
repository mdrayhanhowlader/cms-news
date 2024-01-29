import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MobileHighlightNews extends GetView<DesktopHomeController> {
  const MobileHighlightNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: Get.width * 0.95,
          decoration: const BoxDecoration(color: Colors.black12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(width: 1, color: Colors.black26))),
                    child: const FaIcon(
                      FontAwesomeIcons.bolt,
                      size: 12,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: const BoxDecoration(color: Colors.red),
                    child: PoppinsText(
                      title: 'NEWS',
                      size: 10,
                      color: Colors.white,
                      weight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: AnimatedTextKit(animatedTexts: [
                      RotateAnimatedText('Title of the important news',
                          duration: const Duration(milliseconds: 3000),
                          transitionHeight: 35,
                          alignment: Alignment.centerLeft)
                    ]),
                  )
                ],
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Container(
              //       decoration: const BoxDecoration(
              //           border: Border(
              //               right: BorderSide(width: 1, color: Colors.black26),
              //               left: BorderSide(width: 1, color: Colors.black26))),
              //       padding:
              //           const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              //       child: const FaIcon(
              //         FontAwesomeIcons.angleUp,
              //         size: 16,
              //       ),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.symmetric(horizontal: 8),
              //       child: const FaIcon(
              //         FontAwesomeIcons.angleDown,
              //         size: 16,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
