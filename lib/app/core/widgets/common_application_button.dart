import 'package:cms_maahadtahfizaddin/app/core/widgets/theme_text.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/extensions/double_extension.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/extensions/widget_extensions.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';

class CommonApplicationButton extends StatelessWidget {
  const CommonApplicationButton({
    super.key,
    required this.img,
    required this.title,
    required this.onTapFunction,
  });

  final String img;
  final String title;
  final Function onTapFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConstant.getSizeByNumber(75),
          padding: EdgeInsets.all(
            SizeConstant.getSizeByNumber(5),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.secondary,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 8,
                offset: Offset(0, 2),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              img,
              height: SizeConstant.getSizeByNumber(40),
            ),
          ),
        ),
        (SizeConstant.getSizeByNumber(5)).height,
        ThemeText(
          title: title,
          size: SizeConstant.getSizeByNumber(10),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ).onTap(onTapFunction);
  }
}
