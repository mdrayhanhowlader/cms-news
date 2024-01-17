import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../data/constants/color_constant.dart';
import '../text_field.dart';

class CustomLoginField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String? title;
  final IconData? prefixIconData;
  final TextFieldType? type;
  final bool? enabled;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final int? maxLength;
  final bool? isValidationRequired;
  final int? maxLines;
  final Color? inputFillColor;
  final Color? hintTextColor;
  final Color? inputTextColor;

  CustomLoginField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.title,
    this.prefixIconData,
    this.type,
    this.enabled,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
    this.validator,
    this.isValidationRequired,
    this.maxLines,
    this.inputFillColor,
    this.hintTextColor,
    this.inputTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      textFieldType: type ?? TextFieldType.OTHER,
      controller: textEditingController,
      enabled: enabled ?? true,
      isValidationRequired: isValidationRequired,
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      validator: validator,
      textStyle: TextStyle(
        color: inputTextColor ?? Theme.of(context).textTheme.titleSmall!.color!,
      ),
      decoration: InputDecoration(
        filled: true,

        fillColor:
            inputFillColor ?? Theme.of(context).colorScheme.secondaryContainer,
        counterText: "",
        // label: Text(
        //   title,
        //   style: context.textTheme.headline6!.apply(color: Colors.grey),
        // ),
        prefixIcon: prefixIconData != null
            ? Icon(
                prefixIconData,
                color: ColorConstant.textColorGlobal,
                size: 20,
              )
            : null,
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
            color: hintTextColor ??
                Theme.of(context).textTheme.titleSmall!.color!.withOpacity(0.5),
            fontSize: 12),
        suffixIconColor: ColorConstant.textColorGlobal,
      ),
    );
  }
}
