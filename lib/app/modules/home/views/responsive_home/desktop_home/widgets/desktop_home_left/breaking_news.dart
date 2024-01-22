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
    'assets/images/breaking-news-slider/slide4.png',
  ];

  final List<String> slideTexts = [
    'Breaking News 1',
    'Breaking News 2',
    'Breaking News 3',
    'Breaking News 4',
    'Breaking News 5',
    'Breaking News 6',
    'Breaking News 7',
    'Breaking News 8',
    'Breaking News 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: const EdgeInsets.only(top: 30, bottom: 50),
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
                width: Get.width * 0.15,
                child: PoppinsText(
                  title: 'BREAKING NEWS',
                  size: 20,
                  color: Colors.black,
                  weight: FontWeight.w700,
                ),
              ),
              Container(
                width: Get.width * 0.55,
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
                      child: Icon(Icons.arrow_back),
                    ),
                    InkWell(
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.amber,
                      mouseCursor: SystemMouseCursors.click,
                      onHover: (value) {},
                      onTap: next,
                      child: Icon(Icons.arrow_forward),
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
                  return buildImage(
                    urlImage,
                    slideText,
                    index,
                  );
                },
                options: CarouselOptions(
                  initialPage: 2,
                  height: 400,
                  viewportFraction: 0.3,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  animateToClosest: true,
                  pageSnapping: false,
                  reverse: false,
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

  Widget buildImage(String urlImage, String slideText, int index) => Container(
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16.0,
              left: 16.0,
              child: Text(
                slideText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
}
