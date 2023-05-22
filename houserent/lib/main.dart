import 'package:flutter/material.dart';
import 'package:houserent/detail/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFFF5F6F6),
        primaryColor: Color(0xFF811883),
        accentColor: Color(0xFFFA5019),
        textTheme: TextTheme(
            headline1: TextStyle(color: Color(0xFF100E34)),
            bodyText1: TextStyle(color: Color(0xFF100E34).withOpacity(0.4))),
      ),
      home: Scaffold(body: Homepage()),
    );
  }
}
