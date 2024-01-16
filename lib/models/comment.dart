class Comment {
  final String id;
  final String authorName;
  final String authorImage;
  final String description;
  int upvotes;
  final List<Comment> replies;

  Comment({
    required this.id,
    required this.authorName,
    required this.authorImage,
    required this.description,
    required this.replies,
    required this.upvotes,
  });
}
