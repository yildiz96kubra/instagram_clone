// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:instagram_clone/models/post.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [Image(image: NetworkImage(post.imageUrl, ))],
      ),
    );
  }
}
