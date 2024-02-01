import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/character_controller.dart';

class CharacterView extends GetView<CharacterController> {
  const CharacterView({Key? key}) : super(key: key);
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
                    'assets/images/character/character.png',
                    fit: BoxFit.cover,
                  ),
                ),
                PoppinsText(
                  title: 'BIOGRAFI PENGERUSI YAYASAN ADDIN',
                  size: 14,
                  weight: FontWeight.bold,
                  align: TextAlign.left,
                  decoration: TextDecoration.underline,
                ),
                const SizedBox(
                  height: 10,
                ),
                PoppinsText(
                  title:
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PoppinsText(
                        title: 'Maklumat Diri',
                        weight: FontWeight.bold,
                        size: 16,
                        decoration: TextDecoration.underline,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      PoppinsText(
                        title:
                            'Name : Sahibul Fadhilah Dato’ Sheikh Mohamah Nor Bin Mansor Al-Hafiz DPMP.AMP',
                        weight: FontWeight.w700,
                        size: 14,
                      ),
                      PoppinsText(
                        title: 'Tarikh Lahir : 10 Januari 1950',
                        weight: FontWeight.w700,
                        size: 14,
                      ),
                      PoppinsText(
                        title:
                            'Tempat Lahir : Kampung Sungai Keli , Hutan Melintang , Perak',
                        weight: FontWeight.w700,
                        size: 14,
                      ),
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
