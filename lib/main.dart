import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMART TI POLNES',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Selamat Datang'),
        ),
        body: Center(
          child: Text('hallo'),
        ),
      ),
    );
  }
}
