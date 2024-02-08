import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeVideos extends GetView<DesktopHomeController> {
  const HomeVideos({Key? key});

  @override
  Widget build(BuildContext context) {
    var crossAxisExtent = 3;
    var width = 0.9;
    var mainAxis = MainAxisAlignment.start;
    var crossAxis = CrossAxisAlignment.start;

    if (MediaQuery.of(context).size.width < 480) {
      crossAxisExtent = 1;
      width = 0.90;
      mainAxis = MainAxisAlignment.center;
      crossAxis = CrossAxisAlignment.center;
    } else if (MediaQuery.of(context).size.width < 800) {
      crossAxisExtent = 2;
    } else if (MediaQuery.of(context).size.width < 1200) {
      crossAxisExtent = crossAxisExtent;
      width = 0.6;
      mainAxis = MainAxisAlignment.start;
      crossAxis = CrossAxisAlignment.start;
    }
    return Container(
      child: Column(
        mainAxisAlignment: mainAxis,
        crossAxisAlignment: crossAxis,
        children: [
          Container(
            width: Get.width * width,
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
                    title: 'VIDEO',
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
          Column(
            children: [
              Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisExtent,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 5, left: 5),
                      child: InkWell(
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        autofocus: false,
                        onTap: () => Get.toNamed('/news-detail-page'),
                        child: VideoCard(
                          videoTitle:
                              'What is Lorem Ipsum? Lorem Ipsum is simply dummy te $index',
                          videoDescription: 'April 2023',
                          videoThumbnailUrl:
                              'assets/images/video/slide$index.png',
                          isHovered: controller.hoveredIndex == index,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String videoTitle;
  final String videoDescription;
  final String videoThumbnailUrl;
  final bool isHovered;

  const VideoCard({
    Key? key,
    required this.videoTitle,
    required this.videoDescription,
    required this.videoThumbnailUrl,
    required this.isHovered,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      color: Colors.white,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Video Thumbnail with Error Handling
                Image.asset(
                  videoThumbnailUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.error,
                        size: 50,
                        color: Colors.red,
                      ),
                    );
                  },
                ),
                // Overlay Video Icon
                const Icon(
                  Icons.play_circle_filled,
                  size: 50,
                  color: Colors.white,
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: isHovered ? 50 : 0,
                  child: Visibility(
                    visible: isHovered,
                    child: Container(
                      color: Colors.red.withOpacity(0.5),
                      child: const Text('Data'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PoppinsText(
                  title: videoTitle,
                  size: 12,
                  weight: FontWeight.w600,
                  color: const Color(0XFF292929),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.clock,
                      color: Color(0XFFE7E7E7),
                      size: 10,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PoppinsText(
                      title: videoDescription,
                      color: Colors.black54,
                      size: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
