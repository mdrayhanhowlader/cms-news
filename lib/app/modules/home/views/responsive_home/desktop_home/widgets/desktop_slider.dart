import 'package:carousel_slider/carousel_slider.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopSlider extends GetView<DesktopHomeController> {
  DesktopSlider({super.key});

  final sliderController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final DesktopHomeController controller = Get.find<DesktopHomeController>();

    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: sliderController,
          options: CarouselOptions(
            height: 470.0,
            aspectRatio: 16 / 9,
            viewportFraction: 1.1,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true, // Enable autoplay
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              controller.updateCurrentPage(index);
            },
          ),
          itemCount: controller.imageList.length,
          itemBuilder: (BuildContext context, int index, _) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    // Handle tap on image if needed
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Image.asset(
                      controller.imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          },
        ),
        Positioned(top: 0, left: 0, right: 0, bottom: 50, child: buildButtons())
      ],
    );
  }

  Widget buildButtons({bool stretch = false}) => Container(
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black.withOpacity(0.6),
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 10)),
                onPressed: previous,
                child: const Icon(
                  Icons.arrow_back,
                  size: 32,
                )),
            stretch
                ? Spacer()
                : const SizedBox(
                    width: 32,
                  ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black.withOpacity(0.6),
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topLeft: Radius.circular(30))),
                    // backgroundColor: Colors.black12.withOpacity(1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 10)),
                onPressed: next,
                child: const Icon(
                  Icons.arrow_forward,
                  size: 32,
                ))
          ],
        ),
      );

  void next() =>
      sliderController.nextPage(duration: Duration(milliseconds: 500));

  void previous() =>
      sliderController.previousPage(duration: Duration(milliseconds: 500));
}
