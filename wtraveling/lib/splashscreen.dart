import 'dart:async';

import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:wtraveling/home_View.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Center(
        child: Txt(
          "Jepara Travelling",
          style: TxtStyle()
            ..fontSize(40)
            ..fontFamily("Literata")
            ..bold()
            ..textColor(Colors.green[300]),
        ),
      ),
    );
  }
}
