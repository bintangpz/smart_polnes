import 'package:flutter/material.dart';
import '../aset/constants.dart';

class MenuPertama extends StatelessWidget {
  const MenuPertama({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 10,
            ),
            child: DaftarMenu(
              text: "Info Terbaru",
              Icons: Icons.newspaper_outlined,
              press: () {},
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Status Dosen",
            Icons: Icons.people_outline,
            press: () {},
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Status Ruangan",
            Icons: Icons.door_front_door_outlined,
            press: () {},
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "KHS",
            Icons: Icons.credit_score_outlined,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DaftarMenu extends StatelessWidget {
  const DaftarMenu({
    Key? key,
    required this.text,
    required this.Icons,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData Icons;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox.fromSize(
      size: Size(130, 130),
      child: new ClipRRect(
        borderRadius: new BorderRadius.circular(30),
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.blue,
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons,
                  size: 30,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
