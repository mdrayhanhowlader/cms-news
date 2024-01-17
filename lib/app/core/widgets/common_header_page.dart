import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Color? color;

  CommonHeader({
    Key? key,
    required this.title,
    this.subtitle,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PoppinsText(
              title: title,
              weight: FontWeight.bold,
              size: 40,
              color: color ?? Colors.black,
            ),
            PoppinsText(
              title: subtitle ?? '',
              weight: FontWeight.w100,
              size: 12,
              color: color ?? Color.fromARGB(255, 86, 85, 85),
            ),
            Divider(
              color: Colors.grey,
            )
          ]),
    );
  }
}
