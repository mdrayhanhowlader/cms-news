import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/primary_school_controller.dart';

class PrimarySchoolView extends GetView<PrimarySchoolController> {
  const PrimarySchoolView({Key? key}) : super(key: key);
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
          Container(
            width: Get.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/images/primary-school/primary-school1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PoppinsText(
                        title:
                            'Alhamdulillah, segala puji bagi Allah S.W.T Tuhan',
                        size: 16,
                        weight: FontWeight.w600,
                      ),
                      Container(
                        width: Get.width * 0.6,
                        child: PoppinsText(
                          title:
                              'sekalian alam. Pelajar tahfiz merupakan tunas yang perlu disemai dan dibajai sebaik mungkin demi melahirkan generasi Al-Quran yang mapan dari pelbagai sudut. Mereka datang daripada pelbagai latar belakang pendidikan dan sosioekonomi, sekaligus memerlukan bimbingan yang komprehensif dan bersepadudalam mencapai maksud pendidikan.',
                          size: 14,
                          weight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: Get.width * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                          'assets/images/primary-school/primary-school2.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: Get.width * 0.6,
                        child: PoppinsText(
                          title:
                              'sekalian alam. Pelajar tahfiz merupakan tunas yang perlu disemai dan dibajai sebaik mungkin demi melahirkan generasi Al-Quran yang mapan dari pelbagai sudut. Mereka datang daripada pelbagai latar belakang pendidikan dan sosioekonomi, sekaligus memerlukan bimbingan yang komprehensif dan bersepadudalam mencapai maksud pendidikan.',
                          size: 14,
                          weight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: Get.width * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                          'assets/images/primary-school/primary-school3.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      PoppinsText(
                        title:
                            'sekalian alam. Pelajar tahfiz merupakan tunas yang perlu disemai dan dibajai sebaik mungkin demi melahirkan generasi Al-Quran yang mapan dari pelbagai sudut. Mereka datang daripada pelbagai latar belakang pendidikan dan sosioekonomi, sekaligus memerlukan bimbingan yang komprehensif dan bersepadudalam mencapai maksud pendidikan.',
                        size: 14,
                        weight: FontWeight.w400,
                      )
                    ],
                  ),
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
