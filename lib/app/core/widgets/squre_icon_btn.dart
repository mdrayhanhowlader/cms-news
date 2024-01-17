import 'package:cms_maahadtahfizaddin/app/data/constants/extensions/widget_extensions.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SquareIconBtn extends StatelessWidget {
  final String src;
  VoidCallback action;
  EdgeInsetsGeometry? margin;
  bool? isDrawer;

  SquareIconBtn({
    super.key,
    required this.src,
    required this.action,
    this.margin,
    this.isDrawer = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: margin == null
          ? isDrawer == true
              ? EdgeInsets.symmetric(
                  horizontal: SizeConstant.getSizeByNumber(13),
                  vertical: SizeConstant.getSizeByNumber(6.5),
                )
              : EdgeInsets.symmetric(
                  vertical: SizeConstant.getSizeByNumber(14),
                  horizontal: SizeConstant.getSizeByNumber(3.8),
                )
          : margin,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Image.asset(
        src,
        color: Theme.of(context).textTheme.titleSmall!.color,
        scale: MediaQuery.of(context).size.width > 1200
            ? (isDrawer == true ? 1 : 1.1)
            : (isDrawer == true ? 1.1 : 1.2),
      ),
    ).onTap(action);
  }
}
