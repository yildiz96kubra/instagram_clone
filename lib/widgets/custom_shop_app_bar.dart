import 'package:flutter/material.dart';

class CustomShopAppBar extends StatelessWidget {
  const CustomShopAppBar({Key? key, required this.showSearchBar})
      : super(key: key);
  final bool showSearchBar;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: false,
      title: showSearchBar
          ? Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200),
              child: TextField(
                cursorColor: Colors.grey.shade500,
                decoration: InputDecoration(
                  hintText: "Search Shop",
                  hintStyle:
                      TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 22,
                    color: Colors.grey.shade500,
                  ),
                ),
                style: TextStyle(
                  fontSize: 16.5,
                  color: Colors.grey.shade500,
                ),
              ),
            )
          : Text(
              "Shop",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
      actions: [
        IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.receipt_long,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ))
      ],
    );
  }
}
