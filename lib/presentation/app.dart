import 'package:flutter/material.dart';
import 'package:reddit_clone/presentation/screens/feed_screen.dart';

class RedditCloneApp extends StatelessWidget {
  const RedditCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: const FeedScreen(),
    );
  }
}
