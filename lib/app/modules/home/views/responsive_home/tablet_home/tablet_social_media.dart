import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletSocialMedia extends GetView<DesktopHomeController> {
  const TabletSocialMedia({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(),
          const SizedBox(height: 20),
          _buildSocialButtons(),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      children: [
        _buildTitleContainer(),
        _buildTitleBorder(),
      ],
    );
  }

  Widget _buildTitleContainer() {
    return Container(
      width: Get.width * 0.15,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: PoppinsText(
        title: 'Follow Us On',
        color: Colors.white,
        spacing: 0.5,
        align: TextAlign.center,
      ),
    );
  }

  Widget _buildTitleBorder() {
    return Container(
      width: Get.width * 0.13, // Adjust the width as needed
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: Colors.black)),
      ),
    );
  }

  Widget _buildSocialButtons() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
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
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            _showErrorDialog(context);
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

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: const Text('Could not launch the URL'),
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
