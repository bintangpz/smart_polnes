import 'package:flutter/material.dart';
import 'package:smart_polnes/aset/constants.dart';
import 'package:smart_polnes/body.dart';
import 'package:smart_polnes/mainpage/My_bottom_navigation_bar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }
}


