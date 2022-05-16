import 'package:aif_submission/features/dashboard_view/presentation/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
          background: Color.fromRGBO(246, 248, 252, 1),
          brightness: Brightness.light,
          error: Colors.red,
          onBackground: Color.fromRGBO(29, 35, 40, 1),
          onError: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Color.fromRGBO(29, 35, 40, 1),
          primary: Color.fromRGBO(246, 100, 105, 1),
          secondary: Color.fromRGBO(29, 35, 40, 1),
          surface: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
      home: MainView(),
    );
  }
}
