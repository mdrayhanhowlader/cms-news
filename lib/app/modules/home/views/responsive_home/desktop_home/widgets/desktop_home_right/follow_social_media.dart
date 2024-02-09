import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FollowSocialMedia extends GetView<DesktopHomeController> {
  const FollowSocialMedia({Key? key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Get.width < 600;
    final titleWidth = isMobile ? Get.width * 0.4 : Get.width * 0.1;
    final borderWidth = isMobile ? Get.width * 0.53 : Get.width * 0.19;
    final containerMargin =
        isMobile ? EdgeInsets.only(right: 10) : EdgeInsets.only(right: 0);

    return Container(
      margin: containerMargin,
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: titleWidth,
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: PoppinsText(
                    title: 'Follow Us On',
                    color: Colors.white,
                    spacing: 0.5,
                    align: TextAlign.center,
                  ),
                ),
                Container(
                  width: borderWidth,
                  decoration: const BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 1, color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _calculateCrossAxisCount(context),
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              childAspectRatio: 3,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: socialButtons.length,
            itemBuilder: (context, index) {
              return ButtonItem(
                text: socialButtons[index]['text'],
                icon: socialButtons[index]['icon'],
                gradientColors: socialButtons[index]['gradientColors'],
              );
            },
          ),
        ],
      ),
    );
  }

  double _calculateTitleWidth(BuildContext context) {
    if (Get.width >= 1200) {
      return Get.width * 0.1;
    } else if (Get.width >= 600) {
      return Get.width * 0.18;
    } else {
      return Get.width * 0.5;
    }
  }

  double _calculateTitleFontSize(BuildContext context) {
    if (Get.width >= 1200) {
      return 14.0;
    } else if (Get.width >= 600) {
      return 12.0;
    } else {
      return 16.0;
    }
  }

  double _calculateTitlePadding(BuildContext context) {
    if (Get.width >= 1200) {
      return 7;
    } else if (Get.width >= 600) {
      return 7;
    } else {
      return 10;
    }
  }

  int _calculateCrossAxisCount(BuildContext context) {
    if (Get.width >= 1200) {
      return 3;
    } else if (Get.width >= 600) {
      return 2;
    } else {
      return 2;
    }
  }
}

class ButtonItem extends GetView<DesktopHomeController> {
  final String text;
  final IconData icon;
  final List<Color> gradientColors;

  ButtonItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton.icon(
        onPressed: () async {
          const url = 'https://www.facebook.com/';
          if (await canLaunchUrlString(url)) {
            await launchUrlString(url);
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Error'),
                  content: const Text('Could not launch $url'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('ok'),
                    )
                  ],
                );
              },
            );
          }
          print('$text button clicked');
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        icon: Container(
          alignment: Alignment.center,
          height: Get.height,
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        label: Container(
          padding: const EdgeInsets.only(top: 7.9, bottom: 7.9, left: 4),
          decoration: const BoxDecoration(
            border: Border(left: BorderSide(width: 1, color: Colors.white)),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> socialButtons = [
  {
    'text': 'Facebook',
    'icon': Icons.facebook,
    'gradientColors': [
      const Color(0xFF3D5A98),
      const Color(0xFF3D5A98),
    ],
  },
  {
    'text': 'Twitter',
    'icon': FontAwesomeIcons.twitter,
    'gradientColors': [
      const Color(0xFF55ACEE),
      const Color(0xFF55ACEE),
    ],
  },
  {
    'text': 'Snapchat',
    'icon': FontAwesomeIcons.snapchat,
    'gradientColors': [
      const Color(0xFFFFFC00),
      const Color(0xFFFFFC00),
    ],
  },
  {
    'text': 'Instagram',
    'icon': FontAwesomeIcons.instagram,
    'gradientColors': [
      const Color(0xFF405DE6),
      const Color(0xFF5851DB),
      const Color(0xFF833AB4),
      const Color(0xFFE1306C),
      const Color(0xFFC13584),
      const Color(0xFFFD1D1D),
      const Color(0xFFF56040),
    ],
  },
  {
    'text': 'Apple',
    'icon': FontAwesomeIcons.apple,
    'gradientColors': [
      const Color(0xFF000000),
      const Color(0xFF000000),
    ],
  },
  {
    'text': 'Youtube',
    'icon': FontAwesomeIcons.youtube,
    'gradientColors': [
      const Color(0xFFFF0000),
      const Color(0xFFFF0000),
    ],
  },
];
