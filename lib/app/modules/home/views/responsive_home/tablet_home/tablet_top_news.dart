import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/tablet_home/tablet_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TabletTopNews extends GetView<TabletHomeController> {
  const TabletTopNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0XFFFF6000)))),
            child: Row(
              children: [
                const Icon(
                  Icons.square,
                  color: Color(0XFFFF6000),
                  size: 12,
                ),
                const SizedBox(
                  width: 5,
                ),
                PoppinsText(
                  title: 'TOP NEWS',
                  color: const Color(0XFFFF6000),
                  size: 12,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: Get.width * 0.6,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: const Color(0XFFE7E5E5),
                  height: 375,
                  width: Get.width * 0.28,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/posts/post1.png',
                        fit: BoxFit.cover,
                        height: 220,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    color: const Color(0XFFFF6000),
                                    child: InkWell(
                                      onTap: () {
                                        Get.toNamed('/news-detail-page');
                                      },
                                      child: PoppinsText(
                                        title: 'BUTTON',
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const FaIcon(
                                        FontAwesomeIcons.clock,
                                        size: 10,
                                        color: Color.fromARGB(171, 41, 41, 41),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      PoppinsText(
                                        title: 'January 2024',
                                        size: 10,
                                        color: const Color.fromARGB(
                                            171, 41, 41, 41),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              alignment: Alignment.centerLeft,
                              child: PoppinsText(
                                title: 'Main Topic Of The Post',
                                size: 16,
                                color: const Color(0XFF454545),
                                align: TextAlign.start,
                                weight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              child: PoppinsText(
                                title:
                                    'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typese',
                                size: 10,
                                color: const Color(0XFF292929),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  // margin: const EdgeInsets.only(right: 5),
                  width: Get.width * 0.30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildNewsCard(
                        image: 'assets/images/breaking-news-slider/slide3.png',
                        date: 'April 2023',
                        content:
                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                      ),
                      _buildNewsCard(
                        image: 'assets/images/breaking-news-slider/slide3.png',
                        date: 'April 2023',
                        content:
                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                      ),
                      _buildNewsCard(
                        image: 'assets/images/breaking-news-slider/slide3.png',
                        date: 'April 2023',
                        content:
                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard({
    required String image,
    required String date,
    required String content,
  }) {
    return Container(
        margin: const EdgeInsets.only(bottom: 5),
        color: const Color(0XFFE7E5E5),
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width * 0.1,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              width: Get.width * 0.19,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.clock,
                          size: 10,
                          color: Color.fromARGB(171, 41, 41, 41),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        PoppinsText(
                          title: date,
                          size: 10,
                          color: const Color.fromARGB(171, 41, 41, 41),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Flexible(
                      child: PoppinsText(
                        title: content,
                        size: 10,
                        weight: FontWeight.w500,
                        color: const Color.fromARGB(181, 41, 41, 41),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
