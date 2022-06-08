import 'package:flutter/material.dart';
import 'package:instagram_clone/_mocks_data/mock.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar(
      {Key? key, required this.onIconTap, required this.selectedPageIndex})
      : super(key: key);

  //alt gezinme çubuğunda gezinin
  int selectedPageIndex = 0;
  final Function onIconTap;
  final double _Iconsize = 30;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: selectedPageIndex == 2? Colors.black:Colors.white,
      child: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () => {onIconTap(0)},
            iconSize: _Iconsize,
            color: selectedPageIndex == 2? Colors.white:Colors.black,
            icon: Icon(selectedPageIndex == 0 ? Icons.home : Icons.home),
          ),
          IconButton(
            onPressed: () => {onIconTap(1)},
            iconSize: _Iconsize,
            color: selectedPageIndex == 2? Colors.white:Colors.black,
            icon: Icon(selectedPageIndex == 1 ? Icons.search : Icons.search),
          ),
          IconButton(
            onPressed: () => {onIconTap(2)},
            iconSize: _Iconsize,
            color: selectedPageIndex == 2? Colors.white:Colors.black,
            icon: Icon(selectedPageIndex == 2
                ? Icons.video_stable
                : Icons.video_stable),
          ),
          IconButton(
            onPressed: () => {onIconTap(3)},
            iconSize: _Iconsize,
            color: selectedPageIndex == 2? Colors.white:Colors.black,
            icon: Icon(selectedPageIndex == 3
                ? Icons.local_mall
                : Icons.local_mall_outlined),
          ),
          InkWell(
            onTap: () => {onIconTap(4)},
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: _Iconsize / 2,
              backgroundImage: NetworkImage(currentUser.profileImageUrl),
            ),
          )
        ],
      )),
    );
  }
}
