import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.onBackground,
      ),
      width: 200,
      height: MediaQuery.of(context).size.height * .3,
      child: Icon(
        Icons.add,
        color: Theme.of(context).colorScheme.background,
        size: 50,
      ),
    );
  }
}
