import 'package:flutter/material.dart';
import 'package:reddit_clone/models/post/post.dart';
import 'package:reddit_clone/utils/count_comments.dart';
import 'package:reddit_clone/utils/format_count.dart';

class PostCommentsCounter extends StatelessWidget {
  final Post post;

  const PostCommentsCounter({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      clipBehavior: Clip.hardEdge,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white38, width: 0.5),
          borderRadius: BorderRadius.circular(100),
        ),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Row(
              children: [
                const Icon(Icons.chat_bubble_outline),
                const SizedBox(width: 6),
                Text(
                  formatCount(countCommentsWithReplies(post.comments)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
