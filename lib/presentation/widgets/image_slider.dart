import 'package:flutter/material.dart';
import "package:collection/collection.dart";

class ImageSlider extends StatefulWidget {
  final List<String> imageUrls;
  const ImageSlider({super.key, required this.imageUrls});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: widget.imageUrls
              .map((url) => Image.asset(
                    url,
                    fit: BoxFit.cover,
                  ))
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: widget.imageUrls
                  .mapIndexed(
                    (index, _) => AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: 9,
                      height: 9,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: currentIndex == index
                            ? Colors.white
                            : Colors.black54,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ]),
    );
  }
}
