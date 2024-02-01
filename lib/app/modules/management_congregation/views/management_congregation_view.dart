import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_bottombar/views/common_bottombar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../controllers/management_congregation_controller.dart';

class ManagementCongregationView
    extends GetView<ManagementCongregationController> {
  const ManagementCongregationView({Key? key}) : super(key: key);
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    const url =
                        'https://addin.awfatech.com/yayasanaddin/content/bannerminisite/arch0_052_1.jpg';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      // ignore: use_build_context_synchronously
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('Error'),
                                content: Text('Could not launch $url'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('ok'))
                                ]);
                          });
                    }
                    // Handle button click
                  },
                  child: PoppinsText(
                    title: 'CARTA ORGANISASI YAYASAN ADDIN',
                    color: Colors.blue,
                    size: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () async {
                    const url =
                        'https://addin.awfatech.com/yayasanaddin/content/bannerminisite/arch0_052_5.jpg';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      // ignore: use_build_context_synchronously
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('Error'),
                                content: Text('Could not launch $url'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('ok'))
                                ]);
                          });
                    }
                    // Handle button click
                  },
                  child: PoppinsText(
                    title: 'CARTA ORGANISASI BAHAGIAN PENDIDIKAN YAYASAN ADDIN',
                    color: Colors.blue,
                    size: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () async {
                    const url =
                        'https://addin.awfatech.com/yayasanaddin/content/bannerminisite/arch0_052_4.jpg';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      // ignore: use_build_context_synchronously
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('Error'),
                                content: Text('Could not launch $url'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('ok'))
                                ]);
                          });
                    }
                    // Handle button click
                  },
                  child: PoppinsText(
                    title: 'CARTA ORGANISASI BAHAGIAN KHIDMAT PENGURUSAN',
                    color: Colors.blue,
                    size: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 5,
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
                                title: Text('Error'),
                                content: Text('Could not launch $url'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('ok'))
                                ]);
                          });
                    }
                    // Handle button click
                  },
                  child: PoppinsText(
                    title: 'CARTA ORGANISASI BAHAGIAN KHIDMAT PENGURUSAN',
                    color: Colors.blue,
                    size: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () async {
                    const url =
                        'https://addin.awfatech.com/yayasanaddin/content/bannerminisite/arch0_052_2.jpg';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      // ignore: use_build_context_synchronously
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('Error'),
                                content: Text('Could not launch $url'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('ok'))
                                ]);
                          });
                    }
                    // Handle button click
                  },
                  child: PoppinsText(
                    title: 'CARTA ORGANISASI BAHAGIAN PEMBANGUNAN DAN HARTANAH',
                    color: Colors.blue,
                    size: 16,
                    decoration: TextDecoration.underline,
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
