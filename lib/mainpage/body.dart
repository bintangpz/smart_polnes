import 'package:flutter/material.dart';
import 'package:smart_polnes/mainpage/header_with_searchbox.dart';
import 'package:smart_polnes/mainpage/menu_pertama.dart';
import 'package:smart_polnes/mainpage/menu_kedua.dart';
import 'package:smart_polnes/mainpage/title.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          const TitleWithMoreBtn(
            title: "Menu Utama",
          ),
          const MenuPertama(),
          const MenuKedua(),
          const TitleWithMoreBtn(
            title: "Info Terbaru",
          ),
        ],
      ),
    );
  }
}
