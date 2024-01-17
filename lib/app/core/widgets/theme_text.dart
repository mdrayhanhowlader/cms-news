import 'package:cms_maahadtahfizaddin/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';
import '../../data/constants/extensions/text_style_extensions.dart';

class ThemeText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? size;
  final double? height;
  final FontWeight? weight;
  final FontStyle? style;
  final TextAlign? align;
  final TextOverflow? overflow;
  final int? maxLines;

  ThemeText({
    Key? key,
    required this.title,
    this.color,
    this.size,
    this.height,
    this.weight,
    this.style,
    this.align,
    this.overflow,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: primaryTextStyle(
        color: color ?? Theme.of(context).textTheme.titleSmall!.color,
        size: size ?? SizeConstant.getSizeByNumber(16),
        weight: weight ?? FontWeight.normal,
        fontStyle: style ?? FontStyle.normal,
        height: height,
      ),
      textAlign: align ?? TextAlign.start,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
