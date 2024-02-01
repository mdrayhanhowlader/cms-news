import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../controllers/low_school_controller.dart';

class LowSchoolView extends GetView<LowSchoolController> {
  const LowSchoolView({Key? key}) : super(key: key);

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
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      'assets/images/low-school/low-school.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width * 0.7,
                    child: PoppinsText(
                      title:
                          'sekalian alam. Pelajar tahfiz merupakan tunas yang perlu disemai dan dibajai sebaik mungkin demi melahirkan generasi Al-Quran yang mapan dari pelbagai sudut. Mereka datang daripada pelbagai latar belakang pendidikan dan sosioekonomi, sekaligus memerlukan bimbingan yang komprehensif dan bersepadudalam mencapai maksud pendidikan.',
                      size: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: PoppinsText(
                          title: 'LOW MEDIUM BRANCH',
                          size: 16,
                          weight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Use ListView.builder to dynamically build the list
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          final i = index + 1;
                          final url = 'https://example.com/$i';
                          return InkWell(
                            onTap: () async {
                              if (await canLaunchUrlString(url)) {
                                await launchUrlString(url);
                              } else {
                                showDialog(
                                  context: Get.context!,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Error'),
                                      content: const Text('Could not launch'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('OK'),
                                        )
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            child: ListTile(
                              title: Text(
                                '$i.  MTQ ADDIN  SG.KELI ',
                                style: const TextStyle(
                                    color: Color(0XFF0011AD), fontSize: 16),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            const CommonBottombarView(),
          ],
        ),
      ),
    );
  }
}
