import 'package:flutter/material.dart';
import '../aset/constants.dart';

class MenuKedua extends StatelessWidget {
  const MenuKedua({
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
              text: "Absensi Online",
              Icons: Icons.present_to_all,
              press: () {},
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Daftar Kehadiran",
            Icons: Icons.co_present,
            press: () {},
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Kalender Akademik",
            Icons: Icons.calendar_month,
            press: () {},
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Jadwal Kuliah",
            Icons: Icons.today,
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