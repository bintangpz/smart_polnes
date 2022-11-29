import 'package:smart_polnes/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:smart_polnes/login_page.dart';

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
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 244, 243),
      body: Center(
        child: Image.asset(
          "images/logo_polnes.png",
          width: 200.0,
          height: 100.0,
        ),
      ),
    );
  }
}
