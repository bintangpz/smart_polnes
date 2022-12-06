
import 'package:flutter/material.dart';
import 'package:smart_polnes/aset/constants.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding*2,
        right: kDefaultPadding*2,
        bottom: kDefaultPadding,
      ),
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: Colors.blue.withOpacity(0.38),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.dashboard,
            color: Colors.blue,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.newspaper_outlined,
            color: Colors.blue,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person,
            color: Colors.blue,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}