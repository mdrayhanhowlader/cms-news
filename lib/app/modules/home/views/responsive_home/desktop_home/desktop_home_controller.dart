import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopHomeController extends GetxController {
  var activeIndex = 0.obs;
  var hoveredIndex = (-1).obs;
  var mostViewedHoveredIndex = (-1).obs;
  var hoveredPostIndex = (-1).obs;
  var hoveredDemoIndex = (-1).obs;

  final CarouselController carouselController = CarouselController();

  final List<String> imageList = [
    'assets/images/video/slide0.png',
    'assets/images/video/slide1.png',
    'assets/images/video/slide2.png',
    'assets/images/video/slide3.png',
    'assets/images/video/slide4.png',
    'assets/images/video/slide5.png',
    // Add other image paths as needed
  ];

  final List<String> slideTitles = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry 0',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry 2',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry 3',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry 4',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry 5',
    // Add other titles as needed
  ];

  void carouselNext() {
    carouselController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  void updateCurrentPage(int index) {
    // Implement your logic here to handle the current page index update
    // For example, you can print the index to verify it's working
    // print('Current page index updated to: $index');
  }

  void carouselBack() {
    carouselController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => activeIndex.value++;

  void updateHoveredIndex(int index) {
    hoveredIndex.value = index;
  }

  void updateMostViewedHoveredIndex(int index) {
    mostViewedHoveredIndex.value = index;
  }

  void updateHoveredDemoIndex(int index, bool hovering) {
    hoveredDemoIndex.value = hovering ? index : -1;
  }

  void updateHoveredPostIndex(int index, bool hovering) {
    hoveredPostIndex.value = hovering ? index : -1;
  }
}
