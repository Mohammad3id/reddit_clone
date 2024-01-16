import 'package:reddit_clone/models/post/post.dart';

abstract class MockData {
  static final posts = [
    VideoPost(
      id: "V_0",
      title: "Check out my new puppy!",
      description: "description",
      authorName: "authorName",
      authorImageUrl: "authorImage",
      subredditName: "dogs",
      subredditImageUrl: "assets/images/subreddit/r_dogs.jpg",
      comments: [],
      date: DateTime.now().subtract(Duration(hours: 3)),
      videoUrl: "assets/videos/puppy.mp4",
      upvotes: 50,
    ),
    NormalPost(
      id: "N_0",
      title: "Conversation about dog health",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in venenatis dui, a tincidunt lacus. Nam gravida diam et velit hendrerit, sed malesuada leo feugiat. Nam luctus elit nec nisl scelerisque fringilla. Praesent malesuada sit amet felis quis pharetra. Integer interdum, quam ut rhoncus luctus, dui lorem fringilla tellus, sit amet fermentum nisl erat ac mi. Donec sodales orci nec euismod molestie. Proin sit amet lorem et sapien cursus eleifend non quis dui. Mauris quis elementum tortor. Nam quis semper est. Nullam tincidunt nisl nisl, sit amet porta augue elementum eu. Aliquam erat volutpat. Maecenas id ex vulputate, auctor urna",
      authorName: "authorName",
      authorImageUrl: "authorImage",
      subredditName: "dogs",
      subredditImageUrl: "assets/images/subreddit/r_dogs.jpg",
      comments: [],
      date: DateTime.now().subtract(Duration(hours: 3)),
      upvotes: 50,
    ),
    ImagePost(
      id: "I_0",
      title: "Pupppies for adoption",
      description: "description",
      authorName: "authorName",
      authorImageUrl: "authorImage",
      subredditName: "dog",
      subredditImageUrl: "assets/images/subreddit/r_dogs.jpg",
      comments: [],
      upvotes: 50,
      date: DateTime.now().subtract(Duration(hours: 3)),
      imageUrls: [
        "assets/images/posts/puppies_1.jpg",
        "assets/images/posts/puppies_2.jpg",
        "assets/images/posts/puppies_3.jpg",
      ],
    ),
    ImagePost(
      id: "I_0",
      title: "A new member of the family :)",
      description: "description",
      authorName: "authorName",
      authorImageUrl: "authorImage",
      subredditName: "dog",
      subredditImageUrl: "assets/images/subreddit/r_dogs.jpg",
      comments: [],
      upvotes: 50,
      date: DateTime.now().subtract(Duration(hours: 3)),
      imageUrls: [
        "assets/images/posts/dog.jpg",
      ],
    ),
  ];
}
