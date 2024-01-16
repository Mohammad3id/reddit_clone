import 'package:flutter/material.dart';
import 'package:reddit_clone/data/mock_data.dart';
import 'package:reddit_clone/presentation/widgets/feed_post.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reddit Clone"),
      ),
      body: ListView.separated(
        itemCount: MockData.posts.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 0);
        },
        itemBuilder: (context, index) {
          final post = MockData.posts[index];

          return FeedPost(post: post);
        },
      ),
    );
  }
}
