import 'package:flutter/material.dart';
import 'package:wtraveling/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jepara Travelling",
      home: SplashScreenPage(),
    );
  }
}

