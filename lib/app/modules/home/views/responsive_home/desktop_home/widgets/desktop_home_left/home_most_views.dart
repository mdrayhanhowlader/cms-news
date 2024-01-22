import 'package:carousel_slider/carousel_slider.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMostViews extends GetView<DesktopHomeController> {
  HomeMostViews({Key? key}) : super(key: key);

  final DesktopHomeController controller = Get.put(DesktopHomeController());

  final sliderController = CarouselController();
  final urlImages = [
    'assets/images/breaking-news-slider/slide4.png',
    'assets/images/breaking-news-slider/slide1.png',
    'assets/images/breaking-news-slider/slide2.png',
    'assets/images/breaking-news-slider/slide1.png',
    'assets/images/breaking-news-slider/slide3.png',
    'assets/images/breaking-news-slider/slide2.png',
    'assets/images/breaking-news-slider/slide4.png',
    'assets/images/breaking-news-slider/slide3.png',
    'assets/images/breaking-news-slider/slide1.png',
    'assets/images/breaking-news-slider/slide4.png',
  ];

  final List<String> slideTexts = [
    'There are many variations of available News 1',
    'There are many variations of available News 2',
    'There are many variations of available News 3',
    'There are many variations of available News 4',
    'There are many variations of available News 5',
    'There are many variations of available News 6',
    'There are many variations of available News 7',
    'There are many variations of available News 8',
    'There are many variations of available News 1',
    'There are many variations of available News 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Get.width * 0.6,
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.red)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: const Icon(
                    Icons.square,
                    color: Colors.red,
                    size: 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: PoppinsText(
                    title: 'MOST VIEWED  ',
                    color: Colors.red,
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              CarouselSlider.builder(
                carouselController: sliderController,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realindex) {
                  final urlImage = urlImages[index];
                  final slideText = slideTexts[index];

                  return MouseRegion(
                    onEnter: (_) => controller.updateHoveredIndex(index),
                    onExit: (_) => controller.updateHoveredIndex(-1),
                    child: buildImage(
                      urlImage,
                      slideText,
                      index,
                    ),
                  );
                },
                options: CarouselOptions(
                  initialPage: 0,
                  viewportFraction: 0.7,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  animateToClosest: true,
                  pageSnapping: false,
                  reverse: false,
                  autoPlayInterval: const Duration(seconds: 5),
                  onPageChanged: (index, reason) =>
                      controller.activeIndex.value = index,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, String slideText, int index) => Container(
        color: Colors.transparent,
        child: Obx(
          () => Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                urlImage,
                fit: BoxFit.cover,
                height: 280,
                width: 450,
              ),
              Positioned(
                bottom: 16.0,
                left: 16,
                right: 0,
                child: PoppinsText(
                  title: slideText,
                  color: Colors.white,
                  size: 14,
                  weight: FontWeight.w500,
                  decoration: controller.hoveredIndex.value == index
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Visibility(
                  visible: controller.hoveredIndex.value == index,
                  child: Container(
                    height: Get.height,
                    color: Colors.black.withOpacity(0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                            visible: controller.hoveredIndex.value == index,
                            child: SizedBox(
                              width: 2,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
