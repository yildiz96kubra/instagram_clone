import 'package:flutter/material.dart';

class ProfileLabelCountWidget extends StatelessWidget {
  const ProfileLabelCountWidget(
      {Key? key,  required this.count,required this.labelText,})
      : super(key: key);
  
  final String count;
   final String labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          count,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          labelText,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.5),
        )
      ]),
    );
  }
}
