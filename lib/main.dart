import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          primaryColor: Color(0xFF3071ac),
          scaffoldBackgroundColor: Color(0xFFEFEFEF),
        ),
        home: Home());
  }
}
