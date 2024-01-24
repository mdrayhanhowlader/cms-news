import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeRecentPost extends GetView<DesktopHomeController> {
  const HomeRecentPost({super.key});

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
                    title: 'RECENT POSTS',
                    color: Colors.red,
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            width: Get.width,
            height: 250,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              color: Colors.grey.shade300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                        width: Get.width * 0.2,
                        child: Image.asset(
                          'assets/images/breaking-news-slider/slide1.png',
                          fit: BoxFit.cover,
                          height: Get.height,
                          width: Get.width,
                        )),
                  ),
                  Container(
                      width: Get.width * 0.4,
                      margin: const EdgeInsets.all(5),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: PoppinsText(
                            title: 'Title of the topic of blog',
                            size: 20,
                            weight: FontWeight.w600,
                            color: Colors.black,
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.clock,
                                size: 8,
                              ),
                              PoppinsText(
                                title: 'April 2023',
                                size: 8,
                                color: Colors.black38,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: PoppinsText(
                              title:
                                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                              size: 14,
                              weight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 2),
                                    backgroundColor: Colors.deepOrange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(2))),
                                onPressed: () {},
                                child: PoppinsText(
                                  title: 'Button',
                                  color: Colors.white,
                                  size: 10,
                                )),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
