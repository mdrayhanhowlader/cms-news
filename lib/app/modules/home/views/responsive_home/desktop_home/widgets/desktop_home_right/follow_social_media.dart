import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
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
                  alignment: Alignment.center,
                  width: Get.width * 0.1,
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                  child: PoppinsText(
                    title: 'Follow Us On',
                    color: Colors.white,
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
          SizedBox(
            height: 20,
          ),
          // Social buttons using GridView
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
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
      child: ElevatedButton.icon(
        onPressed: () {
          // Handle button click
          print('$text button clicked');
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          // Add elevation
          elevation: 3,
          // Set gradient background
          primary: gradientColors.first,
          onPrimary: Colors.white, // Text color
          shadowColor: gradientColors.first.withOpacity(0.7), // Shadow color
          // Use BoxDecoration to set linear gradient
          // This will create a linear gradient using the specified colors
          // Adjust the begin and end points as needed
          // gradient: LinearGradient(
          //   colors: gradientColors,
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
        ),
        icon: Container(
          alignment: Alignment.center,
          height: Get.height,
          padding:
              EdgeInsets.symmetric(horizontal: 8), // Adjust padding for spacing
          decoration: const BoxDecoration(
            border: Border(right: BorderSide(width: 1, color: Colors.white)),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        label: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
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
    'gradientColors': [Colors.blue, Color(0xFF2E3192)],
  },
  {
    'text': 'Twitter',
    'icon': FontAwesomeIcons.twitter,
    'gradientColors': [Colors.black, Colors.grey],
  },
  {
    'text': 'Snapchat',
    'icon': FontAwesomeIcons.snapchat,
    'gradientColors': [Color(0xFFFFFC00), Color(0XFFFFFC00)],
  },
  {
    'text': 'Instagram',
    'icon': FontAwesomeIcons.instagram,
    'gradientColors': [
      Color(0XFFD54FAE),
      Color(0XFFFA7E1E),
      Color(0XFFD62976),
      Color(0XFF962FBF),
      Color(0XFFD54FAE),
      Color(0XFFD54FAE),
    ],
  },
  {
    'text': 'Apple',
    'icon': FontAwesomeIcons.youtube,
    'gradientColors': [Color(0XFF000000), Color(0XFF000000)],
  },
  {
    'text': 'Youtube',
    'icon': FontAwesomeIcons.github,
    'gradientColors': [Color(0XFFFF0000), Color(0XFFFF0000)],
  },
];
