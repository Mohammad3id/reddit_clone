part of "post.dart";

class NormalPost extends Post {
  NormalPost({
    required super.id,
    required super.title,
    required super.description,
    required super.authorName,
    required super.authorImageUrl,
    required super.subredditName,
    required super.subredditImageUrl,
    required super.comments,
    required super.upvotes, required super.date,
  });
}
