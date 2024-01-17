import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class CustomDataTimeField extends StatelessWidget {
  final String date;
  final VoidCallback onTapAction;

  const CustomDataTimeField(
      {super.key, required this.date, required this.onTapAction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PoppinsText(
                title: date,
                color: Colors.black.withOpacity(0.5),
                size: 12,
              ),
              LineIcon(
                Icons.calendar_month_outlined,
                color: Colors.black.withOpacity(0.5),
                size: 20,
              ),
            ],
          ),
        ),
        Container(
          height: 0.5,
          color: Color(0xFFCECECE),
        ),
      ],
    ).onTap(onTapAction);
  }
}
