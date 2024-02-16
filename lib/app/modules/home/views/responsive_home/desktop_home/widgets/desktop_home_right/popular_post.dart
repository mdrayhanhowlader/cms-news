import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularPost extends GetView<DesktopHomeController> {
  const PopularPost({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Get.width < 600;
    final titleWidth = isMobile ? Get.width * 0.4 : Get.width * 0.1;
    final borderWidth = isMobile ? Get.width * 0.53 : Get.width * 0.19;

    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: titleWidth,
                  color: Colors.black,
                  height: 32,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: PoppinsText(
                    title: 'Popular Post',
                    color: Colors.white,
                    align: TextAlign.center,
                    size: 14,
                  ),
                ),
                Container(
                  width: borderWidth,
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 1, color: Colors.black))),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: List.generate(
                3,
                (index) => PostItem(
                  imageUrl: 'assets/images/video/slide$index.png',
                  text: 'Contrary to popular belief $index',
                  index: index,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PostItem extends GetView<DesktopHomeController> {
  final String imageUrl;
  final String text;
  final int index;

  PostItem({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = Get.width < 600;

    final itemWidth = isMobile ? Get.width * 0.95 : Get.width * 0.28;

    return InkWell(
      autofocus: false,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () {
        // Handle post item click here
        print('Post $index clicked');
      },
      onHover: (hovering) {
        // Call the controller method to update hovered index
        controller.updateHoveredPostIndex(index, hovering);
      },
      child: Container(
        width: itemWidth,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: [
            Image.asset(
              imageUrl,
              width: Get.width, // Adjust the width as needed
              height: 120, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
                child: Center(
                  child: PoppinsText(
                    title: text,
                    size: 12,
                    color: Colors.white,
                    align: TextAlign.center,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Visibility(
                visible: controller.hoveredPostIndex == index,
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: PoppinsText(
                      title: 'Hover Text',
                      size: 16,
                      color: Colors.white,
                      align: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
