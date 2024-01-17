import 'package:cms_maahadtahfizaddin/app/data/constants/extensions/widget_extensions.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/widgets/text_field.dart';
import '../../data/constants/color_constant.dart';

class CommonFormTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String? title;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final VoidCallback? onTapSuffixIcon;
  final TextFieldType? type;
  final bool? enabled;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final int? maxLength;
  final bool? isValidationRequired;
  final int? maxLines;
  final Function(String)? onChanged;

  CommonFormTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.title,
    this.prefixIconData,
    this.suffixIconData,
    this.onTapSuffixIcon,
    this.type,
    this.enabled,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
    this.validator,
    this.isValidationRequired,
    this.maxLines,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      textStyle: TextStyle(
          fontSize: SizeConstant.fourteen, color: Colors.black), // 14px
      textFieldType: type ?? TextFieldType.OTHER,
      controller: textEditingController,
      enabled: enabled ?? true,
      isValidationRequired: isValidationRequired,
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFFAFAFA),
        counterText: "",
        // label: Text(
        //   title,
        //   style: context.textTheme.headline6!.apply(color: Colors.grey),
        // ),
        prefixIcon: prefixIconData != null
            ? Icon(
                prefixIconData,
                color: ColorConstant.black,
                size: SizeConstant.twentyFour, // 24px
              )
            : null,
        suffixIcon: suffixIconData != null
            ? Icon(
                suffixIconData,
                color: ColorConstant.black,
                size: SizeConstant.twentyFour, // 24px
              ).onTap(onTapSuffixIcon)
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstant.primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFECECEC), width: 0.50),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFECECEC), width: 0.50),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xffbdbdbd),
          fontSize: SizeConstant.fourteen,
        ), // 14px
        suffixIconColor: ColorConstant.textColorGlobal,
      ),
    );
  }
}
