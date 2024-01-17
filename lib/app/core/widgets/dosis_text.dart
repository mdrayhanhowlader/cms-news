import 'package:flutter/material.dart';
import '../../../app/data/constants/color_constant.dart';
import '../../data/constants/extensions/text_style_extensions.dart';

class DosisText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final FontStyle? style;
  final TextAlign? align;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? spacing;

  DosisText({
    Key? key,
    required this.title,
    this.color,
    this.size,
    this.weight,
    this.style,
    this.align,
    this.overflow,
    this.maxLines,
    this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: primaryTextStyle(
        color: color ?? ColorConstant.textColorGlobal,
        size: size ?? 16,
        weight: weight ?? FontWeight.normal,
        fontStyle: style ?? FontStyle.normal,
        letterSpacing: spacing,
        fontFamily: 'Dosis', // Specify the 'Dosis' font family here
      ),
      textAlign: align ?? TextAlign.start,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
