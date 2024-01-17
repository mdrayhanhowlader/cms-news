import 'package:cms_maahadtahfizaddin/app/data/constants/extensions/double_extension.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTabLabel extends StatelessWidget {
  String imgSrc;
  String label;
  CustomTabLabel({
    super.key,
    required this.imgSrc,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imgSrc,
          color: Theme.of(context).textTheme.titleSmall!.color,
          height: SizeConstant.getSizeByNumber(18),
        ),
        (SizeConstant.getSizeByNumber(5)).width,
        Text(
          label,
          style: TextStyle(
            fontSize: SizeConstant.getSizeByNumber(12),
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
