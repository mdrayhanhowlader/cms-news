import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/widgets/nav_bottom.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/widgets/nav_top.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 15),
                  width: Get.width * 0.8,
                  child: NavTop()),
              Container(
                  width: Get.width * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PoppinsText(
                        title: 'FAQ',
                        size: 14,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.facebook_sharp,
                        color: Colors.grey.shade200,
                        size: 14,
                      ),
                      FaIcon(
                        FontAwesomeIcons.xTwitter,
                        color: Colors.grey.shade200,
                        size: 14,
                      ),
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.grey.shade200,
                        size: 14,
                      ),
                    ],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
            padding: EdgeInsets.symmetric(horizontal: 0),
            color: Color(0XFF292929),
            width: Get.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: Get.width * 0.7, child: NavBottom()),
                Container(
                  color: Colors.red,
                  height: 45,
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 0, // Adjust top padding
                    bottom: 0, // Adjust bottom padding
                  ),
                  alignment: Alignment.centerRight,
                  width: Get.width * 0.2,
                  child: AnimSearchBar(
                    autoFocus: true,
                    width: 300,
                    textController:
                        TextEditingController(text: 'Search Here...'),
                    onSuffixTap: () {},
                    searchIconColor: Colors.white,
                    boxShadow: false,
                    color: Colors.transparent,
                    onSubmitted: (p0) {},
                    rtl: true,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold),
                    textFieldColor: Color(0XFFFF6000),
                    textFieldIconColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight * 3); // Adjust the height as needed
}
