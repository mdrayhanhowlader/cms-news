import 'package:carousel_slider/carousel_slider.dart';
import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:cms_maahadtahfizaddin/app/modules/news-detail-page/views/news_detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            autoPlay: true,
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
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
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
                      Positioned(
                        // Center text vertically
                        top: 320,
                        left: 20,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        backgroundColor:
                                            const Color(0XFFFF6000)),
                                    onPressed: () {
                                      Get.to(NewsDetailPageView());
                                    },
                                    child: PoppinsText(
                                      title: 'BUTTON',
                                      size: 14,
                                      weight: FontWeight.w400,
                                      color: Colors.white,
                                    )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: Get.width * 0.6,
                                child: PoppinsText(
                                  title: controller.slideTitles[index],
                                  color: Colors.white,
                                  size: 16,
                                  weight: FontWeight.w300,
                                  spacing: 0.2,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons.clock,
                                      size: 10,
                                      color: Colors.white54,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    PoppinsText(
                                      title: '01 JANUARY 2024',
                                      size: 10,
                                      color: Colors.white54,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
        Positioned(top: 0, left: 0, right: 0, bottom: 0, child: buildButtons()),
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
                foregroundColor: Colors.black.withOpacity(0.2),
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(2),
                    topRight: Radius.circular(2),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              ),
              onPressed: previous,
              child: const Icon(
                Icons.arrow_back,
                size: 32,
              ),
            ),
            stretch ? Spacer() : const SizedBox(width: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black.withOpacity(0.6),
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(2),
                    topLeft: Radius.circular(2),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              ),
              onPressed: next,
              child: const Icon(
                Icons.arrow_forward,
                size: 32,
              ),
            )
          ],
        ),
      );

  void next() =>
      sliderController.nextPage(duration: Duration(milliseconds: 500));

  void previous() =>
      sliderController.previousPage(duration: Duration(milliseconds: 500));
}
