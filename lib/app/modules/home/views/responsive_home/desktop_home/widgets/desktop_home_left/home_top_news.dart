import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/news-detail-page/views/news_detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeTopNews extends GetView<DesktopHomeController> {
  const HomeTopNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // border container width
            width: Get.width * 0.9, // Change from 0.6 to 0.9 for mobile
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
                    weight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            // height: 440,
            width: Get.width,
            padding: const EdgeInsets.only(right: 5),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  // For mobile, use single-column layout
                  return Column(
                    children: [
                      _buildMobileNewsCard(
                        image: 'assets/images/breaking-news-slider/slide1.png',
                        date: 'April 2023',
                        content:
                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                      ),
                      _buildMobileNewsCard(
                        image: 'assets/images/breaking-news-slider/slide2.png',
                        date: 'April 2023',
                        content:
                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                      ),
                      _buildMobileNewsCard(
                        image: 'assets/images/breaking-news-slider/slide3.png',
                        date: 'April 2023',
                        content:
                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                      ),
                    ],
                  );
                } else {
                  // For desktop and tablet, use the original layout
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Card(
                          // Desktop card
                          shadowColor: Colors.transparent,
                          color: const Color(0XFFE7E5E5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(NewsDetailPageView());
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: Get.width < 600 ? 150 : 284,
                                  width: Get.width < 600 ? 200 : 427,
                                  child: Image.asset(
                                    'assets/images/posts/post1.png',
                                    fit: BoxFit.cover,
                                    height: Get.width < 600 ? 150 : 284,
                                    width: Get.width < 600 ? 200 : 427,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 0,
                                                  shadowColor:
                                                      Colors.transparent,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                  ),
                                                  backgroundColor:
                                                      const Color(0XFFFF6000),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 25,
                                                      vertical: 0),
                                                ),
                                                onPressed: () {
                                                  Get.toNamed(
                                                      '/news-detail-page');
                                                },
                                                child: PoppinsText(
                                                  title: 'Button',
                                                  color: Colors.white,
                                                  size:
                                                      Get.width < 600 ? 10 : 12,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  const FaIcon(
                                                    FontAwesomeIcons.clock,
                                                    size: 10,
                                                    color: Color.fromARGB(
                                                        151, 41, 41, 41),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  PoppinsText(
                                                    title: 'April 2023',
                                                    size: Get.width < 600
                                                        ? 8
                                                        : 10,
                                                    color:
                                                        const Color(0XFF292929),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        child: PoppinsText(
                                          title: 'Main Topic Of The Post',
                                          color: const Color(0XFF454545),
                                          size: Get.width < 600 ? 16 : 20,
                                          weight: FontWeight.w600,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        child: PoppinsText(
                                          title:
                                              'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typese',
                                          size: Get.width < 600 ? 10 : 12,
                                          weight: FontWeight.w300,
                                          color: const Color.fromARGB(
                                              176, 41, 41, 41),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildNewsCard(
                              image:
                                  'assets/images/breaking-news-slider/slide1.png',
                              date: 'April 2023',
                              content:
                                  'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                            ),
                            _buildNewsCard(
                              image:
                                  'assets/images/breaking-news-slider/slide2.png',
                              date: 'April 2023',
                              content:
                                  'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                            ),
                            _buildNewsCard(
                              image:
                                  'assets/images/breaking-news-slider/slide3.png',
                              date: 'April 2023',
                              content:
                                  'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
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
      width: Get.width < 600 ? 200 : 426,
      height: Get.width < 600 ? 100 : 140,
      child: Card(
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        color: const Color(0XFFE7E5E5),
        child: GestureDetector(
          onTap: () {
            Get.toNamed('/news-detail-page');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  width: Get.width < 600 ? 90 : 189,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    height: Get.width < 600 ? 100 : Get.height,
                    width: Get.width < 600 ? 120 : Get.width,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width < 600 ? 110 : 226,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.clock,
                          size: 8,
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: Get.width < 600 ? 6 : 8,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      content,
                      style: TextStyle(
                        fontSize: Get.width < 600 ? 10 : 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMobileNewsCard({
    required String image,
    required String date,
    required String content,
  }) {
    return Container(
      width: Get.width * 0.95,
      child: Card(
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        color: const Color(0XFFE7E5E5),
        child: GestureDetector(
          onTap: () {
            Get.toNamed('/news-detail-page');
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140,
                width: Get.width * 0.4,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.clock,
                            size: 12,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            date,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        content,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
