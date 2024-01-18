import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/widgets/nav_bottom.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/widgets/nav_top.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppbarView extends GetView<CommonAppbarController>
    implements PreferredSizeWidget {
  const CommonAppbarView({super.key});

  @override
  Widget build(BuildContext context) {
    final CommonAppbarController controller = Get.put(CommonAppbarController());

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: Color(0XFF292929),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: Get.width * 0.7, child: NavTop()),
              Container(
                  width: Get.width * 0.1,
                  child: const Text(
                    'data',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(HomeView());
                        },
                        child: Image.asset('assets/images/logo/logo.png')),
                  ],
                ),
              ),
            ],
          ),
        ),
        Material(
          child: Container(
            color: Color(0XFF292929),
            width: Get.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: Get.width * 0.7, child: NavBottom()),
                Container(
                    width: Get.width * 0.1,
                    child: const Text(
                      'data',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ),

        // // Add the Search Input with animation
        // Obx(() {
        //   return controller.isSearchInputVisible.value
        //       ? _buildSearchInput()
        //       : Container();
        // }),
      ],
    );
  }

  // Function to build the dropdown navigation
  Widget _buildDropdownNavigation(List<String> items) {
    return DropdownButton<String>(
      items: items.map((item) {
        return DropdownMenuItem(
          child: Text(item, style: TextStyle(color: Colors.white)),
          value: item,
        );
      }).toList(),
      onChanged: (value) {
        // Handle dropdown item selection
        print('Selected: $value');
      },
      underline: Container(), // Remove the default underline
      icon: Icon(Icons.arrow_drop_down, color: Colors.yellow),
      dropdownColor: Color(0XFF292929),
      style: TextStyle(color: Colors.white),
    );
  }

  // Function to build the search input
  Widget _buildSearchInput() {
    return SizedBox(
      width: Get.width * 0.5, // Adjust the width as needed
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight * 3); // Adjust the height as needed
}
