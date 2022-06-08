import 'package:flutter/material.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: 
                Icon(
                  Icons.https_outlined,
                  size: 18,color: Colors.black
                )
          ),
          Text(
            "Yildiz v",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),

          IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.expand_more,
                  size: 18, color: Colors.black
                )),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.add_box_outlined, color: Colors.black
            )),
        IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.dehaze_sharp, color: Colors.black
            )),
      ],
    );
  }

  }
