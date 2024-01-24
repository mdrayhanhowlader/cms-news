import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeTopNews extends GetView<DesktopHomeController> {
  const HomeTopNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: Get.width * 0.6,
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.red))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: const Icon(
                    Icons.square,
                    color: Colors.red,
                    size: 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: PoppinsText(
                    title: 'TOP NEWS',
                    color: Colors.red,
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 450,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.width * 0.8,
                          alignment: Alignment.center,
                          child: Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/breaking-news-slider/slide1.png',
                                  fit: BoxFit.cover,
                                  height: 284,
                                  width: Get.width,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                    backgroundColor: Colors.deepOrange,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 3),
                                  ),
                                  onPressed: () {},
                                  child: PoppinsText(
                                    title: 'Button',
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: PoppinsText(
                                  title: 'Main Topic Of The Post',
                                  color: Colors.black,
                                  size: 20,
                                  weight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                child: PoppinsText(
                                  title:
                                      'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typese',
                                  size: 12,
                                  weight: FontWeight.w300,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ), // Add spacing between the containers

                // right column lists start
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        width: 426,
                        height: 140,
                        child: Card(
                          color: Colors.grey.shade300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                    width: 189,
                                    child: Image.asset(
                                      'assets/images/breaking-news-slider/slide1.png',
                                      fit: BoxFit.cover,
                                      height: Get.height,
                                      width: Get.width,
                                    )),
                              ),
                              Container(
                                  width: 226,
                                  margin: const EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const FaIcon(
                                            FontAwesomeIcons.clock,
                                            size: 8,
                                          ),
                                          PoppinsText(
                                            title: 'April 2023',
                                            size: 8,
                                            color: Colors.black54,
                                          )
                                        ],
                                      ),
                                      PoppinsText(
                                        title:
                                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                                        size: 12,
                                        weight: FontWeight.w500,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 426,
                        height: 140,
                        child: Card(
                          color: Colors.grey.shade300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                    width: 189,
                                    child: Image.asset(
                                      'assets/images/breaking-news-slider/slide1.png',
                                      fit: BoxFit.cover,
                                      height: Get.height,
                                      width: Get.width,
                                    )),
                              ),
                              Container(
                                  width: 226,
                                  margin: const EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const FaIcon(
                                            FontAwesomeIcons.clock,
                                            size: 8,
                                          ),
                                          PoppinsText(
                                            title: 'April 2023',
                                            size: 8,
                                          )
                                        ],
                                      ),
                                      PoppinsText(
                                        title:
                                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                                        size: 12,
                                        weight: FontWeight.w500,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 426,
                        height: 140,
                        child: Card(
                          color: Colors.grey.shade300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                    width: 189,
                                    child: Image.asset(
                                      'assets/images/breaking-news-slider/slide1.png',
                                      fit: BoxFit.cover,
                                      height: Get.height,
                                      width: Get.width,
                                    )),
                              ),
                              Container(
                                  width: 226,
                                  margin: const EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const FaIcon(
                                            FontAwesomeIcons.clock,
                                            size: 8,
                                          ),
                                          PoppinsText(
                                            title: 'April 2023',
                                            size: 8,
                                          )
                                        ],
                                      ),
                                      PoppinsText(
                                        title:
                                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                                        size: 12,
                                        weight: FontWeight.w500,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // right column lists end
              ],
            ),
          ),
        ],
      ),
    );
  }
}
