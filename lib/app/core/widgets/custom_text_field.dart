import '../../../app/core/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/constants/color_constant.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  TextFieldType? type;
  final String hintText;
  final FormFieldValidator<String>? validator;
  CustomTextField(
      {Key? key,
      required this.textEditingController,
      this.type,
      required this.hintText,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AppTextField(
        textFieldType: type ?? TextFieldType.OTHER,
        textAlign: TextAlign.center,
        controller: textEditingController,
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          // label: Container(
          //   width: Get.width,
          //   child: Text(hintText,
          //             textAlign: TextAlign.center,
          //             style: context.textTheme.headline6!
          //                 .apply(color: Colors.grey),
          //
          //   ),
          // ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstant.primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstant.primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          hintText: hintText,
        )).paddingOnly(left: width * 0.04, right: width * 0.04);
  }
}
