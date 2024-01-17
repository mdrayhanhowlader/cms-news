import 'package:cms_maahadtahfizaddin/app/core/widgets/theme_text.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_login_field.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.label,
    required this.textController,
    required this.hintsText,
  });

  final String label;
  final TextEditingController textController;
  final String hintsText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ThemeText(
            title: label,
            size: SizeConstant.getSizeByNumber(12),
            weight: FontWeight.w500,
          ),
          CustomLoginField(
            textEditingController: textController,
            hintText: hintsText,
          ).marginOnly(
            top: SizeConstant.getSizeByNumber(4),
            bottom: SizeConstant.getSizeByNumber(15),
          ),
        ],
      ),
    );
  }
}
