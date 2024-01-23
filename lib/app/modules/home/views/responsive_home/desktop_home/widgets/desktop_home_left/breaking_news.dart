import 'package:carousel_slider/carousel_slider.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakingNews extends GetView<DesktopHomeController> {
  BreakingNews({super.key});

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
  final List<String> slideCategories = [
    'Awfatech 1',
    'Awfatech 2',
    'Awfatech 3',
    'Awfatech 4',
    'Awfatech 5',
    'Awfatech 6',
    'Awfatech 7',
    'Awfatech 8',
    'Awfatech 1',
    'Awfatech 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: const EdgeInsets.only(
        top: 20,
      ),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.black),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.14,
                child: PoppinsText(
                  title: 'BREAKING NEWS',
                  size: 20,
                  color: Colors.black,
                  weight: FontWeight.w700,
                ),
              ),
              Container(
                width: Get.width * 0.60,
                decoration: const BoxDecoration(
                  border:
                      Border(top: BorderSide(width: 1, color: Colors.black)),
                ),
              ),
              Container(
                width: Get.width * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.amber,
                      mouseCursor: SystemMouseCursors.click,
                      onHover: (value) {},
                      onTap: previous,
                      child: const Icon(Icons.arrow_back),
                    ),
                    InkWell(
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.amber,
                      mouseCursor: SystemMouseCursors.click,
                      onHover: (value) {},
                      onTap: next,
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width * 0.1,
                decoration: const BoxDecoration(
                  border:
                      Border(top: BorderSide(width: 1, color: Colors.black)),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              CarouselSlider.builder(
                carouselController: sliderController,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realindex) {
                  final urlImage = urlImages[index];
                  final slideText = slideTexts[index];
                  final slideCategory = slideCategories[index];
                  return MouseRegion(
                    onEnter: (_) => controller.updateHoveredIndex(index),
                    onExit: (_) => controller.updateHoveredIndex(-1),
                    child: buildImage(
                      urlImage,
                      slideText,
                      slideCategory,
                      index,
                    ),
                  );
                },
                options: CarouselOptions(
                  initialPage: 3,
                  height: 300,
                  viewportFraction: 0.3,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  animateToClosest: true,
                  autoPlayInterval: const Duration(seconds: 3),
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

  void next() =>
      sliderController.nextPage(duration: const Duration(milliseconds: 500));

  void previous() => sliderController.previousPage(
      duration: const Duration(milliseconds: 500));

  Widget buildImage(
          String urlImage, String slideText, String slideCategory, int index) =>
      Container(
        color: Colors.transparent,
        child: Obx(
          () => Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                urlImage,
                fit: BoxFit.cover,
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
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                backgroundColor: Colors.deepOrange,
                                animationDuration: const Duration(seconds: 2),
                                elevation: 4.0),
                            onPressed: () {
                              // Handle button click
                              // You can navigate to the news category page or perform any other action.
                            },
                            child: PoppinsText(
                              title: slideCategory,
                              color: Colors.white,
                              size: 10,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ),
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
