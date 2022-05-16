import 'package:flutter/material.dart';

class TaskHistory_widget extends StatelessWidget {
  const TaskHistory_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          color: Color.fromRGBO(29, 35, 40, 1),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
