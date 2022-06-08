import 'package:flutter/material.dart';
import 'package:instagram_clone/_mocks_data/mock.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/widgets/add_story_card.dart';


import 'package:instagram_clone/widgets/custom_home_app_bar.dart';
import 'package:instagram_clone/widgets/post_card.dart';
import 'package:instagram_clone/widgets/story_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
        SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 80,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: index == 0 ? AddStoryCard(): StoryCard(story: stories[index-1],),
                    );
                  }),
            )
          ],
        )),

        SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostCard( posts: posts[index],);
              },
              childCount: posts.length
            ),)

      ],
    );
  }
}
