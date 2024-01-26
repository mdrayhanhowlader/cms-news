import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/news-detail-page/views/news_detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeTopNews extends GetView<DesktopHomeController> {
  const HomeTopNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                    weight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 440,
            width: Get.width,
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    color: const Color(0XFFE7E5E5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to NewsDetailPageView
                        Get.to(NewsDetailPageView());
                      },
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
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      backgroundColor: Color(0XFFFF6000),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 3),
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
                                  height: 5,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: PoppinsText(
                                    title: 'Main Topic Of The Post',
                                    color: const Color(0XFF454545),
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
                                    color:
                                        const Color.fromARGB(176, 41, 41, 41),
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
                ), // Add spacing between the containers

                // right column lists start
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildNewsCard(
                        image: 'assets/images/breaking-news-slider/slide1.png',
                        date: 'April 2023',
                        content:
                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and types',
                      ),
                      _buildNewsCard(
                        image: 'assets/images/breaking-news-slider/slide2.png',
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

                // right column lists end
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
      width: 426,
      height: 140,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Color(0XFFE7E5E5),
        child: GestureDetector(
          onTap: () {
            // Navigate to NewsDetailPageView
            Get.to(NewsDetailPageView());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  width: 189,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    height: Get.height,
                    width: Get.width,
                  ),
                ),
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
                          title: date,
                          size: 8,
                          color: Colors.black54,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PoppinsText(
                      title: content,
                      size: 12,
                      weight: FontWeight.w500,
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
}
