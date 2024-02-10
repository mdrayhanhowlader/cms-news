import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    final isMobile = Get.width < 600;
    final isTablet = Get.width >= 600 && Get.width < 768;
    final isiPadMini = Get.width >= 768 && Get.width < 960;
    final titleWidth = isMobile
        ? Get.width * 0.9
        : isTablet
            ? Get.width * 0.6
            : isiPadMini
                ? Get.width * 0.4
                : Get.width * 0.4;

    return Container(
      width: Get.width,
      child: Column(
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Container(
            width: titleWidth,
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
          const SizedBox(
            height: 10,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: Get.width * 0.95,
                          child: _buildMobileCarousel(),
                        ),
                      ],
                    ),
                  ],
                );
              } else if (constraints.maxWidth < 1200) {
                return Column(
                  children: [
                    _buildTabletCarousel(),
                  ],
                );
              } else {
                return Row(
                  children: [
                    Expanded(child: _buildDesktopCarousel()),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMobileCarousel() {
    return CarouselSlider.builder(
      carouselController: sliderController,
      itemCount: urlImages.length,
      itemBuilder: (context, index, realindex) {
        final urlImage = urlImages[index];
        final slideText = slideTexts[index];

        return MouseRegion(
          onEnter: (_) => controller.activeIndex.value = index,
          onExit: (_) => controller.activeIndex.value = -1,
          child: Container(
            width: Get.width * 0.9, // 90% width for mobile
            margin: const EdgeInsets.only(
                right: 2), // Margin between slides for mobile
            child: buildImage(urlImage, slideText, index),
          ),
        );
      },
      options: CarouselOptions(
        initialPage: 0,
        viewportFraction: 1,
        scrollDirection: Axis.horizontal,
        enlargeCenterPage: false,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        autoPlay: true,
        enableInfiniteScroll: false,
        animateToClosest: true,
        pageSnapping: true,
        reverse: false,
        autoPlayInterval: const Duration(seconds: 5),
        onPageChanged: (index, reason) => controller.activeIndex.value = index,
      ),
    );
  }

  Widget _buildTabletCarousel() {
    return Row(
      children: [
        Expanded(
          child: _buildMobileCarousel(),
        ),
        Expanded(
          child: _buildMobileCarousel(),
        ),
      ],
    );
  }

  Widget _buildDesktopCarousel() {
    return Row(
      children: [
        Expanded(
          child: _buildMobileCarousel(),
        ),
      ],
    );
  }

  Widget buildImage(String urlImage, String slideText, int index) => Container(
        color: Colors.transparent,
        child: Obx(
          () => Stack(
            children: [
              Image.asset(
                urlImage,
                height: 280,
                fit: BoxFit.cover,
                width: Get.width,
              ),
              Positioned(
                bottom: 16.0,
                left: 16,
                right: 0,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed('news-detail-page');
                      },
                      child: PoppinsText(
                        title: slideText,
                        color: controller.activeIndex.value == index
                            ? Colors.white
                            : Colors.white70,
                        size: 14,
                        weight: FontWeight.w500,
                        spacing: 0.5,
                        decoration: controller.activeIndex.value == index
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.clock,
                          size: 8,
                          color: Colors.white60,
                        ),
                        PoppinsText(
                          title: 'April 2023',
                          size: 8,
                          color: Colors.white60,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Visibility(
                  visible: controller.activeIndex.value == index,
                  child: Container(
                    height: Get.height,
                    color: Colors.black.withOpacity(0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: controller.activeIndex.value == index,
                          child: const SizedBox(width: 0),
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
