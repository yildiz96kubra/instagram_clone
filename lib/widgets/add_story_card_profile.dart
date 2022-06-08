import 'package:flutter/material.dart';
import 'package:instagram_clone/_mocks_data/mock.dart';

class AddStoryCardProfile extends StatelessWidget {
  const AddStoryCardProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple,
          radius: 45,
          backgroundImage: NetworkImage(currentUser.profileImageUrl),
        ),
        Positioned(
          top: 65,
          left: 65,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue),
            child: IconButton(
              padding: EdgeInsets.all(1),
              onPressed: () => {},
              icon: Icon(Icons.add),
              iconSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

