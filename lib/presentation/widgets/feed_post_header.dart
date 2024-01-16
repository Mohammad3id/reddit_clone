import 'package:flutter/material.dart';
import 'package:reddit_clone/models/post/post.dart';
import 'package:reddit_clone/utils/format_elapsed_time.dart';

class FeedPostHeader extends StatelessWidget {
  const FeedPostHeader({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(post.subredditImageUrl),
          radius: 16,
        ),
        const SizedBox(width: 6),
        Text(
          "r/${post.subredditName}",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          formatElapsedTime(post.date),
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
