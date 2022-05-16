import 'package:flutter/material.dart';

class ProfileCircle_Widget extends StatelessWidget {
  const ProfileCircle_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/motb_building.png'),
        ),
        Icon(
          Icons.arrow_drop_down_sharp,
          color: Colors.black,
        )
      ],
    );
  }
}
