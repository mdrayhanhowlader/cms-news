import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_appbar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_bottom_bar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/widgets/mobile_highlight_news.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/background_controller.dart';

class BackgroundView extends GetView<BackgroundController> {
  const BackgroundView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _buildAppBar(),
          const SizedBox(
            height: 10,
          ),
          _buildHighlight(),
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
                    'assets/images/background/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                PoppinsText(
                  title: 'Background',
                  size: 14,
                  weight: FontWeight.w700,
                  align: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                PoppinsText(
                  title:
                      'Pada awal Disember 1993, projek Sekolah Agama Rakyat Kg Tualang Sekah, Malim Nawar, Perak yang terbengkalai mula dimajukan sebagai maahad tahfiz hasil perbincangan bersama antara Tuan Haji Abdullah Bin Mat Hasim Penghulu Mukim Kampar ketika itu dengan Dato Syeikh Mohamah Nor Bin Mansor al Hafiz Imam Besar Masjid Negeri Perak. Pengambilan pelajar kumpulan pertama adalah pada tahun 1994 seramai 10 orang pelajar bertempat di MTQ ADDIN Kg Tualang Sekah Malim Nawar., terletak di atas sebidang tanah seluas 9e 2r 15p iaitu tanah wakaf Yang Dipertua Majlis Agama Islam Perak. Dua buah bangunan ( 5 bilik darjah ) yang telah siap dibina oleh Pejabat Daerah Kinta di bawah peruntukan Pembangunan Luar Bandar pada masa itu, telah digunakan sepenuhnya bagi kegunaan pelajar sebagai bilik darjah dan asrama.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  title:
                      'Bermula tahun 2000, dengan dasar satu daerah satu tahfiz, Yayasan ADDIN mula membuka peluang kepada masyarakat untuk bersama sama memajukan bidang tahfiz ini dengan mewakafkan tanah mereka untuk dijadikan tapak maahad tahfiz seterusnya dapat membuka peluang untuk menerima lebih ramai pelajar dalam satu-satu masa. Berikut adalah senarai cawangan MTQ ADDIN serta tahun penubuhannya.',
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          _buildBottomBar()
        ],
      ),
    ));
  }

  Widget _buildAppBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Container(height: 160, child: const MobileAppbar());
        } else {
          return const CommonAppbarView();
        }
      },
    );
  }

  Widget _buildHighlight() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileHighlightNews();
        } else {
          return const HighlightNews();
        }
      },
    );
  }

  Widget _buildBottomBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileBottomBar();
        } else {
          return const CommonBottombarView();
        }
      },
    );
  }
}
