import 'package:flutter/material.dart';
import 'package:smart_polnes/header_with_searchbox.dart';
import 'package:smart_polnes/constants.dart';
import 'package:smart_polnes/menu_utama.dart';
import 'package:smart_polnes/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(
          title: "Menu Utama",
          press: () {},
        ),
        MenuUtama(),
      ]),
    );
  }
}


