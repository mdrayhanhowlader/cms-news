import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/widgets/text_field.dart';
import '../../data/constants/color_constant.dart';

class CommonTextField extends StatelessWidget {
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

  CommonTextField({
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
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 226, 226, 226),
        counterText: "",
        // label: Text(
        //   title,
        //   style: context.textTheme.headline6!.apply(color: Colors.grey),
        // ),
        prefixIcon: prefixIconData != null
            ? Icon(
                prefixIconData,
                color: ColorConstant.textColorGlobal,
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstant.primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 195, 195, 195)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstant.primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xffbdbdbd)),
        suffixIconColor: ColorConstant.textColorGlobal,
      ),
    );
  }
}
