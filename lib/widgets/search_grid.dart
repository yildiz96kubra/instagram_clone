import 'package:flutter/material.dart';
import 'package:instagram_clone/_mocks_data/mock.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/widgets/explore_tile.dart';

class SearchGrid extends StatelessWidget {
  const SearchGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
      ),
      itemBuilder: (context, index) {
        return ExploreTile(
            post: Post(
                "$index",
                currentUser,
                "https://picsum.photos/id/${1047 + index}/400/",
                "title",
                "location",
                "caption",
                "postedTimeAgo",
                "totalLikes",
                "totalComments",
                true,
                true));
      },
      itemCount: 40,
    );
  }
}
