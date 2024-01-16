part of "post.dart";

class ImagePost extends Post {
  final List<String> imageUrls;

  ImagePost({
    required super.id,
    required super.title,
    required super.description,
    required super.authorName,
    required super.authorImageUrl,
    required super.subredditName,
    required super.subredditImageUrl,
    required super.comments,
    required super.upvotes,
    required this.imageUrls,
    required super.date,
    required super.userVote,
  }) : super(commentsCount: countCommentsWithReplies(comments));
}
