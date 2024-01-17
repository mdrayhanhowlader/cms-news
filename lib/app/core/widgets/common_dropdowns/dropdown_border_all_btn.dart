import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';

class DropdownBorderAllBtn extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>> options;
  final Function(dynamic) onChanged;
  final double? height;
  final String hintText;
  final Color? color;
  final dynamic initailValue;

  DropdownBorderAllBtn({
    super.key,
    required this.options,
    required this.onChanged,
    this.height,
    required this.hintText,
    this.color,
    this.initailValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 38,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: ShapeDecoration(
        color: Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: Color(0xFFECECEC)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: DropdownButton(
        value: initailValue,
        hint: Align(
          alignment: Alignment.centerLeft,
          child: PoppinsText(
            title: hintText,
            size: SizeConstant.getSizeByNumber(12),
            color: color ?? Colors.black.withOpacity(0.25),
          ),
        ),
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
        ),
        // value: controller.selected.value,
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
        underline: Container(),
        alignment: AlignmentDirectional.center,
        items: options,
        onChanged: (code) {
          onChanged(code);
        },
      ),
    );
  }
}
