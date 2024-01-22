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
    'assets/images/breaking-news-slider/slide1.png',
    'assets/images/breaking-news-slider/slide2.png',
    'assets/images/breaking-news-slider/slide3.png',
    'assets/images/breaking-news-slider/slide4.png',
    'assets/images/breaking-news-slider/slide4.png',
    'assets/images/breaking-news-slider/slide4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: const EdgeInsets.only(top: 30, bottom: 200),
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(width: 1, color: Colors.black),
        // bottom: BorderSide(width: 1, color: Colors.black)
      )),
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
                        Border(top: BorderSide(width: 1, color: Colors.black))),
              ),
              Container(
                width: Get.width * 0.05,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.arrow_back),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              Container(
                width: Get.width * 0.1,
                decoration: const BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 1, color: Colors.black))),
              )
            ],
          ),
          Stack(
            children: [
              CarouselSlider.builder(
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realindex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                    initialPage: 3,
                    height: 400,
                    viewportFraction: 0.3,
                    scrollDirection: Axis.horizontal,
                    enlargeCenterPage: false,
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    pageSnapping: false,
                    reverse: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    onPageChanged: (index, reason) =>
                        controller.activeIndex.value = index,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

Widget buildImage(String urlImae, int index) => Container(
      // margin: EdgeInsets.symmetric(horizontal: 44),
      // width: Get.width,

      color: Colors.transparent,
      child: Image.asset(
        urlImae,
        fit: BoxFit.cover,
      ),
    );
