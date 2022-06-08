import 'dart:ui';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/_mocks_data/mock.dart';

class ReelDetail extends StatelessWidget {
  const ReelDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 12,
          title: Text(
            "WORLD ",
            style: TextStyle(color: Colors.white),
          ),
          leading: CircleAvatar(radius: 14, backgroundImage: NetworkImage(currentUser.profileImageUrl),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ExpandableText(
            "Ömür bir masal gibidir, ne kadar uzun olduğu değil, ne kadar güzel yaşandığı önemlidir",
            style: TextStyle(
                fontSize: 12.5,
                color: Colors.white,
                fontWeight: FontWeight.w400),
            expandText: "more",
            collapseText: "less",
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 1,
            linkColor: Colors.white,
          ),
        ),
        ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 5,
          title: Text(
            "Music title -- music Originals",
            style: TextStyle(color: Colors.grey),
          ),
          leading: Icon(
            Icons.graphic_eq_outlined,
            size: 16,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
