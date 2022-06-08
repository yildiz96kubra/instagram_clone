import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/custom_profile_app_bar.dart';
import 'package:instagram_clone/widgets/profile_header.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, index) {
            return [
              CustomProfileAppBar(),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.white,
                  child: ProfileHeader(),
                ),
              ),

            ];

          },
          body: TabBarView(children: [
              CustomScrollView(
                physics: ClampingScrollPhysics(),
                slivers: [
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://picsum.photos/id/${index + 1068}/500/500'),
                          ),
                        ),
                      );
                    }),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                    ),
                  )
                ],
              ),
              CustomScrollView(
                physics: ClampingScrollPhysics(),
                slivers: [
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://picsum.photos/id/${index + 1047}/500/500'),
                          ),
                        ),
                      );
                    }),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                    ),
                  ),
                ],
              ),

          

          
       ]) ));
  }
}
