import 'package:aif_submission/widgets/molecules/ProfileCircle_Widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class MainAppBar_Widget extends StatelessWidget {
  const MainAppBar_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 40),
          Text(
            'ARTIFACTS',
            textScaleFactor: .7,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 40),
          Text(
            'COLLECTIONS',
            textScaleFactor: .7,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 40),
          Text(
            'EVENTS',
            textScaleFactor: .7,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        padding: EdgeInsets.all(5),
        child: Image.asset(
          'assets/motb_logo_white.png',
          fit: BoxFit.contain,
        ),
      ),
      actions: [
        Badge(
          shape: BadgeShape.circle,
          position: BadgePosition.topEnd(top: 15, end: 2),
          padding: EdgeInsets.all(5),
          child: Icon(
            Icons.notifications,
            color: Colors.grey,
            size: 25,
          ),
        ),
        SizedBox(width: 10),
        ProfileCircle_Widget(),
      ],
    );
  }
}
