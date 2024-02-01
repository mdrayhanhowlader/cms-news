import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../controllers/educational_flow_chart_controller.dart';

class EducationalFlowChartView extends GetView<EducationalFlowChartController> {
  const EducationalFlowChartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const CommonAppbarView(),
          const SizedBox(
            height: 10,
          ),
          const HighlightNews(),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: Get.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/images/education/educational-flow-chart.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PoppinsText(
                      title: 'LOW MEDIUM BRANCH',
                      size: 14,
                      weight: FontWeight.w700,
                      align: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        const url = 'https://www.facebook.com/';
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        } else {
                          // ignore: use_build_context_synchronously
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: const Text('Error'),
                                    content:
                                        const Text('Could not launch $url'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('ok'))
                                    ]);
                              });
                        }
                        // Handle button click
                      },
                      child: PoppinsText(
                        title: 'HTTP://DEMOLINL.COM/',
                        color: const Color(0XFF0011AD),
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PoppinsText(
                      title: 'LOW MEDIUM BRANCH',
                      size: 14,
                      weight: FontWeight.w700,
                      align: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        const url = 'https://www.facebook.com/';
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        } else {
                          // ignore: use_build_context_synchronously
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: const Text('Error'),
                                    content:
                                        const Text('Could not launch $url'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('ok'))
                                    ]);
                              });
                        }
                        // Handle button click
                      },
                      child: PoppinsText(
                        title: 'HTTP://DEMOLINL.COM/',
                        color: const Color(0XFF0011AD),
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PoppinsText(
                      title: 'LOW MEDIUM BRANCH',
                      size: 14,
                      weight: FontWeight.w700,
                      align: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        const url = 'https://www.facebook.com/';
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        } else {
                          // ignore: use_build_context_synchronously
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: const Text('Error'),
                                    content:
                                        const Text('Could not launch $url'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('ok'))
                                    ]);
                              });
                        }
                        // Handle button click
                      },
                      child: PoppinsText(
                        title: 'HTTP://DEMOLINL.COM/',
                        color: const Color(0XFF0011AD),
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                    PoppinsText(
                      title:
                          'LOREM TEXT LOREM TEXT LOREM TREXT LOREM TEXT LOREM TEXT',
                      size: 12,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          const CommonBottombarView()
        ],
      ),
    ));
  }
}
