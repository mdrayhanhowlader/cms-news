import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme_text.dart';
import 'custom_date_time_field.dart';

class CustomDateFormField extends StatelessWidget {
  const CustomDateFormField({
    super.key,
    required this.label,
    required this.dateField,
    required this.onTap,
  });

  final String label;
  final String dateField;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ThemeText(
            title: label,
            size: 12,
            weight: FontWeight.w500,
          ),
          CustomDataTimeField(
            date: dateField,
            onTapAction: onTap,
          ).marginOnly(top: 4, bottom: 15),
        ],
      ),
    );
  }
}
