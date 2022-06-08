import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      centerTitle: false,
      title: Text(
        "Instagram",
        maxLines: 1,
        style: GoogleFonts.satisfy(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () => {}, icon: const Icon(Icons.add_box_outlined,color: Colors.black)),
        IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.favorite_border_outlined,color: Colors.black)),
        IconButton(
            onPressed: () => {}, icon: const Icon(Icons.messenger_outline_sharp,color: Colors.black)),
      ],
    );
  }
}
