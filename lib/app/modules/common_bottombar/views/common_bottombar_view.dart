import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/common_bottombar_controller.dart';

class CommonBottombarView extends GetView<CommonBottombarController> {
  const CommonBottombarView({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PoppinsText(
                          title: 'ADDRESS',
                          size: 18,
                          weight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        PoppinsText(
                            title:
                                'No 5, 1, Jalan USJ 1/1a, \nRegalia Business \nCenter, 47620 \nSelangor, \nMalaysia')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PoppinsText(
                          title: 'CONTACT',
                          size: 18,
                          weight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        InkWell(
                          child: PoppinsText(title: 'Support@awfatech.com'),
                        ),
                        InkWell(
                          child: PoppinsText(title: '(+603) 8023 423'),
                        )
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PoppinsText(
                          title: 'SUPPORT',
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                        InkWell(
                          child: PoppinsText(
                            title: 'FAQ & Guiline',
                            size: 14,
                            weight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  child: PoppinsText(
                    title: 'SAMSUNG',
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.red,
                          )),
                    ),
                    InkWell(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.xTwitter,
                            color: Colors.black,
                          )),
                    ),
                    InkWell(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Colors.red,
                          )),
                    ),
                    InkWell(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: const Text(
                      '© 2023 DEVELOPMENT/UPGRADING CMS MODULE Copyright. Powered by: AWFATECH'),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            )));
  }
}
