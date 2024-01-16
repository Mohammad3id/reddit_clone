import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:native_video_view/native_video_view.dart';

class FeedPostVideo extends StatefulWidget {
  final String videoUrl;
  const FeedPostVideo({super.key, required this.videoUrl});

  @override
  State<FeedPostVideo> createState() => _FeedPostVideoState();
}

class _FeedPostVideoState extends State<FeedPostVideo> {
  late final VideoViewController _controller;

  var muted = true;

  var videoEnded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          const BoxConstraints(minWidth: double.infinity, maxHeight: 500),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return FittedBox(
                fit: BoxFit.cover,
                child: ConstrainedBox(
                  constraints: BoxConstraints.loose(
                    Size(
                      constraints.maxWidth,
                      double.infinity,
                    ),
                  ),
                  child: NativeVideoView(
                    keepAspectRatio: true,
                    onCreated: (controller) {
                      controller.setVideoSource(
                        widget.videoUrl,
                        sourceType: VideoSourceType.asset,
                      );
                      _controller = controller;
                    },
                    onPrepared: (controller, videoInfo) {
                      controller.play();
                    },
                    onCompletion: (controller) {
                      setState(() {
                        videoEnded = true;
                      });
                    },
                  ),
                ),
              );
            },
          ),
          Positioned.fill(
            child: AnimatedOpacity(
              opacity: videoEnded ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                color: Colors.black54,
                alignment: Alignment.center,
                child: IconButton(
                  icon: const Icon(Icons.replay),
                  style: IconButton.styleFrom(
                    focusColor: Colors.white,
                    iconSize: 48,
                  ),
                  onPressed: () {
                    setState(() {
                      videoEnded = false;
                    });
                    _controller.play();
                  },
                ),
              ),
            ),
          ),
          Positioned(
            right: 6,
            bottom: 6,
            child: IconButton(
              icon: Icon(muted ? Icons.volume_off : Icons.volume_up),
              style: IconButton.styleFrom(
                backgroundColor: Colors.black54,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                setState(() {
                  muted = !muted;
                });
                _controller.toggleSound();
              },
            ),
          ),
        ],
      ),
    );
  }
}
