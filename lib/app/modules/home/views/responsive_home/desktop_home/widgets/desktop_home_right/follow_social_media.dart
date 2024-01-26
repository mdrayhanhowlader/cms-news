import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class FollowSocialMedia extends GetView<DesktopHomeController> {
  const FollowSocialMedia({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
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
                  width: Get.width * 0.1,
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    'Follow Us On',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: Get.width * 0.19,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Social buttons using GridView
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Adjust the crossAxisCount to 2
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
                color: socialButtons[index]['color'],
              );
            },
          ),
        ],
      ),
    );
  }
}

class ButtonItem extends GetView<DesktopHomeController> {
  final String text;
  final IconData icon;
  final Color color;

  ButtonItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: ElevatedButton.icon(
        onPressed: () {
          // Handle button click
          print('$text button clicked');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
          // Adjust the padding to 5
        ),
        icon: Container(
          decoration: BoxDecoration(
              border: Border(right: BorderSide(width: 1, color: Colors.white))),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        label: Text(
          text,
          style: TextStyle(
              fontSize: 12,
              color: Colors.white), // Adjust the font size as needed
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> socialButtons = [
  {
    'text': 'Facebook',
    'icon': Icons.facebook,
    'color': Colors.blue,
  },
  {
    'text': 'Twitter',
    'icon': FontAwesomeIcons.twitter,
    'color': Colors.black,
  },
  {
    'text': 'Instagram',
    'icon': FontAwesomeIcons.instagram,
    'color': Colors.pink,
  },
  {
    'text': 'LinkedIn',
    'icon': FontAwesomeIcons.linkedin,
    'color': Colors.blue,
  },
  {
    'text': 'YouTube',
    'icon': FontAwesomeIcons.youtube,
    'color': Colors.red,
  },
  {
    'text': 'GitHub',
    'icon': FontAwesomeIcons.github,
    'color': Colors.black,
  },
];
