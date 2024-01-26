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
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0XFFFF6000)))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: const Icon(
                    Icons.square,
                    color: Color(0XFFFF6000),
                    size: 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: PoppinsText(
                    title: 'TOP NEWS',
                    color: const Color(0XFF454545),
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 440,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Container(
                          height: 284,
                          width: 427,
                          child: Image.asset(
                            'assets/images/posts/post1.png',
                            fit: BoxFit.cover,
                            height: 284,
                            width: 427,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 426,
                        height: 140,
                        child: Card(
                          color: Color(0XFFE7E5E5),
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
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: 226,
                                  padding: const EdgeInsets.all(10),
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
                                      const SizedBox(
                                        height: 20,
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
                          color: Color(0XFFE7E5E5),
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
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: 226,
                                  padding: const EdgeInsets.all(10),
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
                                      const SizedBox(
                                        height: 20,
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
                          color: Color(0XFFE7E5E5),
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
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: 226,
                                  padding: const EdgeInsets.all(10),
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
                                      const SizedBox(
                                        height: 20,
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
