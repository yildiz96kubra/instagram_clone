import 'package:flutter/material.dart';
import 'package:instagram_clone/models/story.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key, required this.story,
  }) : super(key: key);
final Story story;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.yellow, Colors.orange.shade900]),
                border: Border.all(width: 2, color: Colors.transparent),borderRadius: BorderRadius.circular(50)),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                backgroundImage: NetworkImage(story.postedBy.profileImageUrl),
              ),
            ),
          ),
          Spacer(),
          Text(
            story.postedBy.username,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
