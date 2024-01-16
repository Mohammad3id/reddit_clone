import 'package:flutter/material.dart';
import 'package:reddit_clone/models/post/post.dart';
import 'package:reddit_clone/utils/format_count.dart';

class PostVoteControls extends StatefulWidget {
  final Post post;
  const PostVoteControls({
    super.key,
    required this.post,
  });

  @override
  State<PostVoteControls> createState() => _PostVoteControlsState();
}

class _PostVoteControlsState extends State<PostVoteControls> {
  void _onDownVote() {
    setState(() {
      if (widget.post.userVote == -1) {
        widget.post.userVote = 0;
      } else {
        widget.post.userVote = -1;
      }
    });
  }

  void _onUpVote() {
    setState(() {
      if (widget.post.userVote == 1) {
        widget.post.userVote = 0;
      } else {
        widget.post.userVote = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      clipBehavior: Clip.hardEdge,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white38, width: 0.5),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: _onUpVote,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Icon(
                      Icons.upload_sharp,
                      color:
                          widget.post.userVote == 1 ? Colors.red : Colors.white,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      formatCount(widget.post.upvotes + widget.post.userVote),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
              child: VerticalDivider(
                width: 0,
                color: Colors.white38,
              ),
            ),
            InkWell(
              onTap: _onDownVote,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Icon(
                  Icons.download_sharp,
                  color: widget.post.userVote == -1 ? Colors.red : Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
