import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/news-detail-page/views/news_detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeRecentPost extends GetView<DesktopHomeController> {
  const HomeRecentPost({super.key});

  @override
  Widget build(BuildContext context) {
    // List of recent posts (Replace with your actual data)
    final List<Map<String, dynamic>> recentPosts = [
      {
        'image': 'assets/images/breaking-news-slider/slide1.png',
        'title': 'Title of the first blog topic',
        'date': 'April 2023',
        'content':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      },
      {
        'image': 'assets/images/breaking-news-slider/slide2.png',
        'title': 'Title of the second blog topic',
        'date': 'April 2023',
        'content':
            'Another long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      },
      {
        'image': 'assets/images/breaking-news-slider/slide3.png',
        'title': 'Title of the third blog topic',
        'date': 'April 2023',
        'content':
            'Yet another long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      },
    ];

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

          // Dynamic rendering of recent posts
          Column(
            children: recentPosts.map((post) {
              return Container(
                margin: const EdgeInsets.only(top: 10, right: 10, left: 0),
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
                          width: 290,
                          child: Image.asset(
                            post['image'],
                            fit: BoxFit.cover,
                            height: Get.height,
                            width: Get.width,
                          ),
                        ),
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
                                title: post['title'],
                                size: 20,
                                weight: FontWeight.w600,
                                color: const Color(0XFF292929),
                                spacing: 0.5,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.clock,
                                  size: 8,
                                  color: Color.fromARGB(181, 41, 41, 41),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                PoppinsText(
                                  title: post['date'],
                                  size: 8,
                                  color: Color.fromARGB(181, 41, 41, 41),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: PoppinsText(
                                title: post['content'],
                                size: 14,
                                weight: FontWeight.w500,
                                color: Color.fromARGB(171, 41, 41, 41),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 2),
                                    backgroundColor: Colors.deepOrange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(2))),
                                onPressed: () {
                                  Get.to(NewsDetailPageView());
                                  // Handle button click
                                },
                                child: PoppinsText(
                                  title: 'Button',
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
