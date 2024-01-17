import 'package:flutter/material.dart';
import '../../../data/constants/color_constant.dart';

class DropdownBorderBelowBtn extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>> options;
  final Function(dynamic) onChanged;
  final double? height;
  final String hintText;
  final Color? color;
  final dynamic initialValue;

  DropdownBorderBelowBtn({
    super.key,
    required this.options,
    required this.onChanged,
    this.height,
    required this.hintText,
    this.color,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<dynamic>(
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        counterText: "",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFCECECE), width: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFCECECE), width: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            color:
                Theme.of(context).textTheme.titleSmall!.color!.withOpacity(0.5),
            fontSize: 12),
        suffixIconColor:
            Theme.of(context).textTheme.titleSmall!.color!.withOpacity(0.5),
      ),
      onChanged: onChanged,
      items: options,
      value: initialValue,
    );
  }
}
