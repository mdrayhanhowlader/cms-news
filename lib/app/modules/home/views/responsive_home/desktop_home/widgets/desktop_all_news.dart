import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/desktop_slider.dart';
import 'package:cms_maahadtahfizaddin/app/modules/news-detail-page/views/news_detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopAllNews extends GetView<DesktopHomeController> {
  const DesktopAllNews({super.key});

  @override
  Widget build(BuildContext context) {
    DesktopHomeController controller = Get.put(DesktopHomeController());
    return Container(
      width: Get.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Get.width * 0.5,
            color: Colors.black,
            child: DesktopSlider(),
          ),
          const SizedBox(
            width: 10,
          ),
          // all news right part
          Container(
            width: Get.width * 0.38,
            child: Column(
              children: List.generate(
                2,
                (index) => buildNewsItem(
                  imageUrl:
                      'assets/images/video/slide$index.png', // Replace with your actual image path
                  newsTitle:
                      'Lorem Ipsum is simply dummy text of the printing and typesettingindustry. $index',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNewsItem({required String imageUrl, required String newsTitle}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            imageUrl,
            height: 224,
            fit: BoxFit.cover,
            width: Get.width * 0.4,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button click
                    // print('Read More button clicked for $newsTitle');
                    Get.to(NewsDetailPageView());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                  child: PoppinsText(
                    title: 'BUTTON',
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                const SizedBox(height: 8),
                PoppinsText(
                  title: newsTitle,
                  color: Colors.white,
                  size: 12,
                  weight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
