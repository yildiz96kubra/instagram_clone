import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
       backgroundColor: Colors.white,
      floating: true,
      centerTitle: false,
      elevation: 0,
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
      ),
    
    
    );
    
  }
}
