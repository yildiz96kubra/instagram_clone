import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({Key? key}) : super(key: key);
  final bool showSearchBar = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 14, right: 14),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200),
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
