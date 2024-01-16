import 'package:reddit_clone/models/comment.dart';

part "video_post.dart";
part "image_post.dart";
part "normal_post.dart";

sealed class Post {
  final String id;
  final String title;
  final String description;
  final String authorName;
  final String authorImageUrl;
  final String subredditName;
  final String subredditImageUrl;
  final List<Comment> comments;
  final DateTime date;
  int upvotes;

  Post({
    required this.id,
    required this.title,
    required this.description,
    required this.authorName,
    required this.authorImageUrl,
    required this.subredditName,
    required this.subredditImageUrl,
    required this.comments,
    required this.date,
    required this.upvotes,
  });
}

