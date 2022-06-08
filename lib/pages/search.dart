import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/widgets/custom_home_app_bar.dart';
import 'package:instagram_clone/widgets/custom_search_app_bar.dart';

import 'package:instagram_clone/widgets/search_grid.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
      backgroundColor: Colors.transparent,
      title: Container(
        height: 40,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade200),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search",
              helperStyle: TextStyle(
                fontSize: 16.5,
                fontWeight: FontWeight.w500,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                size: 24,
                color: Colors.grey.shade500,
              )),
        ),
      ),),

      body: SearchGrid(),

    
    );
  }
}
