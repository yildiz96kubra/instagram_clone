import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/pages/shop.dart';

import 'package:instagram_clone/widgets/custom_bottom_navigation_bar.dart';

class NavigationContainer extends StatefulWidget {
  NavigationContainer({Key? key}) : super(key: key);

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;

  static  List<Widget> _children = [
    Home(),
    Search(),
    Reels(),
    Shop(),
    Profile(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onIconTap: _onIconTapped,
        selectedPageIndex: _selectedPageIndex,
      ),
    );
  }
}
