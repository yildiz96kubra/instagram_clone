import 'package:flutter/material.dart';
import 'package:instagram_clone/util/reel_detail.dart';
import 'package:instagram_clone/util/reel_slide_action_bar.dart';
import 'package:instagram_clone/widgets/reel_detail.dart';
import 'package:instagram_clone/widgets/reel_slide_action_bar.dart';

class Reels extends StatelessWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Reels",
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.photo_camera_outlined),
            color: Colors.white,
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(

                  image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("http://picsum.photos/id/${index+1047}/800/1080")),
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.1),Colors.transparent
                    ],begin: Alignment(0, -0.75),
                    end: Alignment(0, 0.1),)
                  ),
                ),
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.1),Colors.transparent
                    ],end: Alignment(0, -0.75),
                    begin: Alignment(0, 0.1),)
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Flexible(flex:14,child: ReelDetail()),
                       Flexible(flex:2,child: ReelSlideActionBar())
                    ],)
                  ],
                )
              ],
            ),
          ),
        );
      })),
    );
  }
}
