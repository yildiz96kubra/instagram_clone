import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/_mocks_data/mock.dart';

class ReelSlideActionBar extends StatelessWidget {
  const ReelSlideActionBar({Key? key}) : super(key: key);
  final double _iconSize = 28;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            iconSize: _iconSize,
          ),
          Text(
            "1.34 k",
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
            ),
            iconSize: _iconSize,
          ),
          Text(
            "22 ",
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.send_rounded,
              color: Colors.white,
            ),
            iconSize: _iconSize,
          ),
          SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            iconSize: _iconSize,
          ),
          Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(currentUser.profileImageUrl)))),
          SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
