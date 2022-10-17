import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Masukkan Email"),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Masukkan Password"),
              ),
            ]),
          ),
        ]));
  }
}
