// ignore_for_file: use_build_context_synchronously
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/widgets/nav_bottom.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/widgets/nav_top.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CommonAppbarView extends GetView<CommonAppbarController>
    implements PreferredSizeWidget {
  const CommonAppbarView({super.key});

  @override
  Widget build(BuildContext context) {
    final CommonAppbarController controller = Get.put(CommonAppbarController());

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: const Color(0XFF292929),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 45,
                  margin: const EdgeInsets.only(left: 15),
                  width: Get.width * 0.8,
                  child: const NavTop()),
              Container(
                  width: Get.width * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'FAQ',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://www.facebook.com/';
                          if (await canLaunchUrlString(url)) {
                            await launchUrlString(url);
                          } else {
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
                        },
                        child: Icon(
                          Icons.facebook_outlined,
                          color: Colors.grey.shade200,
                          size: 14,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://www.facebook.com/';
                          if (await canLaunchUrlString(url)) {
                            await launchUrlString(url);
                          } else {
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
                        },
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.grey.shade200,
                          size: 14,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://www.facebook.com/';
                          if (await canLaunchUrlString(url)) {
                            await launchUrlString(url);
                          } else {
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
                        },
                        child: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.grey.shade200,
                          size: 14,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        AppBar(
          toolbarHeight: 148,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        splashColor: Colors.transparent,
                        autofocus: false,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Get.toNamed('/home');
                        },
                        child: Image.asset(
                          'assets/images/logo/logo.png',
                          color: Colors.transparent,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        Material(
          color: const Color(0XFF292929),
          // borderRadius: BorderRadius.circular(5),
          child: Container(
            width: Get.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: Get.width * 0.7, child: const NavBottom()),
                Container(
                  height: 60,
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 10,
                    // Adjust bottom padding
                  ),
                  alignment: Alignment.centerRight,
                  width: Get.width * 0.2,
                  child: AnimSearchBar(
                    autoFocus: true,
                    width: 300,
                    textController: TextEditingController(
                      text: '',
                    ),
                    onSuffixTap: () {},
                    searchIconColor: Colors.white,
                    boxShadow: false,
                    color: Colors.transparent,
                    onSubmitted: (p0) {},
                    rtl: true,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textFieldColor: const Color(0XFFFF6000),
                    textFieldIconColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight * 3); // Adjust the height as needed
}
