
part of "post.dart";

class VideoPost extends Post {
  final String videoUrl;

  VideoPost({
    required this.videoUrl,
    required super.id,
    required super.title,
    required super.description,
    required super.authorName,
    required super.authorImageUrl,
    required super.subredditName,
    required super.subredditImageUrl,
    required super.comments,
    required super.upvotes,
    required super.date,
  });
}
