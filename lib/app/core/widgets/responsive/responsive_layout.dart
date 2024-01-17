import 'package:cms_maahadtahfizaddin/app/data/constants/responsive_constant.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  // final Widget mobile;
  // final Widget tablet;
  final Widget desktop;

  ResponsiveLayout(
      {
      // required this.mobile,
      // required this.tablet,
      required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < ResponsiveConstants.mobileWidth) {
          return desktop;
          // return mobile;
        } else if (constraints.maxWidth < ResponsiveConstants.tabletWidth) {
          return desktop;
          // return tablet;
        } else {
          return desktop;
        }

        // return desktop;
      },
    );
  }
}
