import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone/models/post/post.dart';
import 'package:reddit_clone/presentation/widgets/feed_post_header.dart';
import 'package:reddit_clone/presentation/widgets/feed_post_video.dart';
import 'package:reddit_clone/presentation/widgets/post_comments_counter.dart';
import 'package:reddit_clone/presentation/widgets/post_images.dart';
import 'package:reddit_clone/presentation/widgets/post_vote_controls.dart';

class FeedPost extends StatelessWidget {
  final Post post;
  const FeedPost({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FeedPostHeader(post: post),
              const SizedBox(height: 6),
              Text(
                post.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 9),
              Builder(
                builder: (context) {
                  final post = this.post;
                  return switch (post) {
                    NormalPost() => Text(
                        post.description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    VideoPost() => FeedPostVideo(videoUrl: post.videoUrl),
                    ImagePost() => PostImages(imageUrls: post.imageUrls),
                  };
                },
              ),
              const SizedBox(height: 9),
              Row(
                children: [
                  PostVoteControls(post: post),
                  SizedBox(width: 12),
                  PostCommentsCounter(post: post),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
