import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:instagram_clone/widgets/add_story_card_profile.dart';
import 'package:instagram_clone/widgets/profile_label_count_widget.dart';

class ProfileHeader extends StatefulWidget {
  ProfileHeader({Key? key}) : super(key: key);

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  bool _isExpansionTileOpen = false;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(top: 8, bottom: 12, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AddStoryCardProfile(),
            SizedBox(
              width: 8,
            ),
            ProfileLabelCountWidget(count: "257", labelText: "Posts"),
            ProfileLabelCountWidget(count: "450", labelText: "Followers"),
            ProfileLabelCountWidget(count: "450", labelText: "Following"),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              "Yildiz.v",
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                "Sadece Arşiv",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 12,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.grey[900]),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5)),
              child: Icon(Icons.person_add_alt),
            )
          ],
        ),
      ),
      ExpansionTile(
        onExpansionChanged: (_isOpen) => {
          setState(() {
            _isExpansionTileOpen = _isOpen;
          })
        },
        title: Text(
          "Story Highlights",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        subtitle: _isExpansionTileOpen
            ? Text(
                'keep your favorite stories in your profile',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            : null,
        trailing: Icon(
          _isExpansionTileOpen
              ? Icons.expand_less_outlined
              : Icons.expand_less_outlined,
          color: Colors.grey.shade500,
        ),
        children: [
          Container(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return index != 0
                      ? Container(
                          width: 80,
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                          ),
                        )
                      : Container(
                          width: 80,
                          child: Column(children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(
                                Icons.add,
                                size: 30,
                              ),
                            ),
                            SizedBox(height: 3,),
                            Text("New")
                          ]),
                        );
                }),
          )
        ],
      ),

              Divider(
          height: 1,
          color:
              _isExpansionTileOpen ? Colors.transparent : Colors.grey.shade400,
        ),

       TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin),
                    ),
                  ],
                ),


    ]);
  }
}
