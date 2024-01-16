import 'dart:math';

import 'package:reddit_clone/models/comment.dart';
import 'package:uuid/uuid.dart';

List<Comment> generateMockComments(
  int maxDepth, [
  int maxCount = 50,
  int currentDepth = 0,
]) {
  if (currentDepth >= maxDepth) {
    return [];
  }

  final List<Comment> comments = [];

  const uuid = Uuid();

  final commentsCount = Random().nextInt(maxCount);
  for (var i = 0; i < commentsCount; i++) {
    comments.add(
      Comment(
        id: uuid.v8(),
        authorName: uuid.v8().substring(0, 10 + Random().nextInt(20)),
        authorImage: "",
        content: uuid.v8().substring(0, 10 + Random().nextInt(10)),
        replies:
            generateMockComments(maxDepth, maxCount ~/ 2, currentDepth + 1),
        upvotes: Random().nextInt(300 - currentDepth * 10),
      ),
    );
  }

  return comments;
}
