import 'package:reddit_clone/models/comment.dart';

int countCommentsWithReplies(List<Comment> comments) {
  var counter = 0;
  
  for (final comment in comments) {
    counter += 1;
    counter += countCommentsWithReplies(comment.replies);
  }

  return counter;
}