import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/mobile_home/mobile_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationDrawerMenu extends GetView<MobileHomeController> {
  const NavigationDrawerMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () => Get.toNamed('/home'),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              _buildCategory('Top Menu',
                  ['MAIN', 'INFO', 'BRANCH', 'E-ALUMNI', 'LINK', 'E-CAREER']),
              _buildCategory('Main Menu', [
                'HOMESTAY',
                'E-INFAQ',
                'COLLABORATE',
                'APPLY FOR ZAKAT',
                'SHOP',
                'FEATURES'
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategory(String title, [List<String>? items]) {
    return Container(
      color: const Color(0XFF454545),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0XFFFF6000),
                ),
              ),
            ),
            child: PoppinsText(
              title: title,
              color: Colors.white,
            ),
          ),
          if (items != null)
            _buildDropdowns(
              items,
              title,
              icon: const Icon(Icons.arrow_drop_down),
            ),
        ],
      ),
    );
  }

  Widget _buildDropdowns(List<String> items, String hintText, {Icon? icon}) {
    return ListTile(
      subtitle: Column(
        children: items
            .map(
              (value) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: DropdownButton<String>(
                  icon: icon,
                  iconEnabledColor: const Color(0XFFFF6000),
                  dropdownColor: Colors.black,
                  hint: Text(
                    hintText,
                    style: const TextStyle(color: Colors.white),
                  ),
                  items: items
                      .map((value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ))
                      .toList(),
                  onChanged: (String? value) {
                    // Handle dropdown value change
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
