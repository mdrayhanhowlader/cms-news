import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/desktop_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeVideos extends GetView<DesktopHomeController> {
  const HomeVideos({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                    title: 'VIDEO',
                    color: Colors.red,
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return VideoCard(
                videoTitle: 'Video Title $index',
                videoDescription: 'Description for Video $index',
                videoThumbnailUrl: 'assets/images/video/slide$index.png',
                isHovered: controller.hoveredIndex == index,
              );
            },
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  child: Visibility(
                    visible: isHovered,
                    child: Container(
                      color: Colors.red.withOpacity(0.5),
                      child: const Text('Data'),
                    ),
                  ),
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: isHovered ? 50 : 0,
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
                  size: 16,
                  weight: FontWeight.w600,
                ),
                const SizedBox(height: 8),
                PoppinsText(
                  title: videoDescription,
                  size: 12,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
