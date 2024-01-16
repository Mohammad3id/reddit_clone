import 'package:flutter/material.dart';
import 'package:reddit_clone/presentation/widgets/image_slider.dart';

class PostImages extends StatelessWidget {
  final List<String> imageUrls;
  const PostImages({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Builder(
        builder: (context) {
          if (imageUrls.length == 1) {
            return ConstrainedBox(
              constraints: BoxConstraints.loose(Size(double.infinity, 500)),
              child: Image.asset(imageUrls.first),
            );
          }
          return ImageSlider(imageUrls: imageUrls);
        },
      ),
    );
  }
}
