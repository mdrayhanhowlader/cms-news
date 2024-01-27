import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/widgets/copywrite_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/common_bottombar_controller.dart';

class CommonBottombarView extends GetView<CommonBottombarController> {
  const CommonBottombarView({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            width: Get.width,
            color: const Color(0XFF292929),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: Get.width * 0.3, // Adjust the width as needed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo/bottom-logo.png',
                            fit: BoxFit.cover),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          child: PoppinsText(
                            title:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummytet evr sice the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                            color: Colors.white,
                            size: 12,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 8,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: Get.width * 0.2,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1.0,
                                      color: Color.fromARGB(94, 255, 98, 0),
                                      style: BorderStyle.solid))),
                          child: PoppinsText(
                            title: 'ADDRESS:',
                            color: const Color(0XFFFF6000),
                            size: 20,
                            weight: FontWeight.w600,
                            spacing: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_pin,
                              color: Colors.white,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: PoppinsText(
                                title:
                                    'No 5,1, Jalan USJ 1/1a Regalia Center\n47600, Selangor, Malaysia',
                                color: Colors.white,
                                size: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                Container(
                  width: Get.width * 0.4,
                  // Adjust the width as needed
                  height: Get.height * 0.5,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        style: BorderStyle.solid,
                        color: Color.fromARGB(94, 255, 98, 0),
                        width: 1.0,
                      ),
                      right: BorderSide(
                        style: BorderStyle.solid,
                        color: Color.fromARGB(94, 255, 98, 0),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: Get.width * 0.35,
                        padding: const EdgeInsets.only(top: 30),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.0,
                                    color: Color.fromARGB(94, 255, 98, 0),
                                    style: BorderStyle.solid))),
                        child: PoppinsText(
                          title: 'CONTACT:',
                          color: const Color(0XFFFF6000),
                          size: 20,
                          weight: FontWeight.w600,
                          spacing: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          PoppinsText(
                            title: 'support@awfatech.com',
                            color: Colors.white,
                            size: 14,
                            weight: FontWeight.w500,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          PoppinsText(
                            title: '(+603) 8023 436',
                            color: Colors.white,
                            size: 14,
                            weight: FontWeight.w500,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    width: Get.width * 0.3, // Adjust the width as needed
                    child: Column(
                      children: [
                        Container(
                          width: Get.width * 0.25,
                          padding: const EdgeInsets.only(top: 30),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1.0,
                                      color: Color.fromARGB(94, 255, 98, 0),
                                      style: BorderStyle.solid))),
                          child: PoppinsText(
                            title: 'VISITORS:',
                            color: const Color(0XFFFF6000),
                            size: 20,
                            weight: FontWeight.w600,
                            spacing: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: PoppinsText(
                                  title: 'amount : 231489',
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: PoppinsText(
                                  title: 'today : 351',
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: PoppinsText(
                                  title: 'yesterday : 351',
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: PoppinsText(
                                  title: 'this month : 12141',
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: PoppinsText(
                                  title: 'Last Month : 12141',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
          const Material(
            child: CopywriteText(),
          )
        ],
      ),
    );
  }
}
