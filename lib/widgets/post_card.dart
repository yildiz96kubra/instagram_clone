import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.posts}) : super(key: key);
final Post posts;

  final double _iconSize = 32;

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              dense: true,
              title: Text(
                posts.postedBy.username,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              subtitle: Text(posts.location,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 15)),
              leading: CircleAvatar(backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(posts.postedBy.profileImageUrl),),
              trailing: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
            Image.network(
              posts.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon( posts.isLiked ?  Icons.favorite :
                        Icons.favorite_border_outlined,
                      ),
                      iconSize: _iconSize,
                      color: posts.isLiked ? Colors.red: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.messenger_outline,
                      ),
                      iconSize: _iconSize,
                    ),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.send_sharp,
                    ),
                    iconSize: _iconSize,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon( posts.isBookmarked ? Icons.bookmark :
                      Icons.bookmark_outline,
                    ),
                    iconSize: _iconSize,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${posts.totalLikes} likes",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  RichText(
                      text: TextSpan(
                          text: posts.postedBy.username,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                          text: "${posts.caption}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ])),
                  SizedBox(
                    height: 5,
                  ),
                  Text("View all ${posts.totalLikes} comments"),
                  SizedBox(
                    height: 5,
                  ),
                  Text(posts.postedTimeAgo, style: TextStyle(
                            fontSize: 13),)
                ],
              ),
            )
          ]),
);
  }
}