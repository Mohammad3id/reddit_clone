import 'package:reddit_clone/models/comment.dart';
import 'package:reddit_clone/models/post/post.dart';
import 'package:reddit_clone/utils/generate_mock_comments.dart';
import 'package:uuid/uuid.dart';

abstract class MockData {
  static const _uuid = Uuid();
  static final posts = [
    VideoPost(
      id: _uuid.v8(),
      title: "Check out my new puppy!",
      description: "description",
      authorName: "authorName",
      authorImageUrl: "authorImage",
      subredditName: "dogs",
      subredditImageUrl: "assets/images/subreddit/r_dogs.jpg",
      comments: generateMockComments(9),
      date: DateTime.now().subtract(Duration(hours: 3)),
      videoUrl: "assets/videos/puppy.mp4",
      upvotes: 50,
      userVote: 0,
    ),
    NormalPost(
      id: _uuid.v8(),
      title: "Conversation about dog health",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in venenatis dui, a tincidunt lacus. Nam gravida diam et velit hendrerit, sed malesuada leo feugiat. Nam luctus elit nec nisl scelerisque fringilla. Praesent malesuada sit amet felis quis pharetra. Integer interdum, quam ut rhoncus luctus, dui lorem fringilla tellus, sit amet fermentum nisl erat ac mi. Donec sodales orci nec euismod molestie. Proin sit amet lorem et sapien cursus eleifend non quis dui. Mauris quis elementum tortor. Nam quis semper est. Nullam tincidunt nisl nisl, sit amet porta augue elementum eu. Aliquam erat volutpat. Maecenas id ex vulputate, auctor urna",
      authorName: "authorName",
      authorImageUrl: "authorImage",
      subredditName: "dogs",
      subredditImageUrl: "assets/images/subreddit/r_dogs.jpg",
      comments: generateMockComments(6),
      date: DateTime.now().subtract(Duration(hours: 3)),
      userVote: 0,
      upvotes: 3440,
    ),
    ImagePost(
      id: _uuid.v8(),
      title: "Pupppies for adoption",
      description: "description",
      authorName: "authorName",
      authorImageUrl: "authorImage",
      subredditName: "dog",
      subredditImageUrl: "assets/images/subreddit/r_dogs.jpg",
      comments: generateMockComments(2),
      upvotes: 5235430,
      userVote: 0,
      date: DateTime.now().subtract(Duration(hours: 3)),
      imageUrls: [
        "assets/images/posts/puppies_1.jpg",
        "assets/images/posts/puppies_2.jpg",
        "assets/images/posts/puppies_3.jpg",
      ],
    ),
    ImagePost(
      id: _uuid.v8(),
      title: "A new member of the family :)",
      description: "description",
      authorName: "authorName",
      authorImageUrl: "authorImage",
      subredditName: "dog",
      subredditImageUrl: "assets/images/subreddit/r_dogs.jpg",
      comments: generateMockComments(3),
      upvotes: 52137890,
      userVote: 0,
      date: DateTime.now().subtract(Duration(hours: 3)),
      imageUrls: [
        "assets/images/posts/dog.jpg",
      ],
    ),
  ];
}
