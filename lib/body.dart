import 'package:flutter/material.dart';
import 'package:smart_polnes/mainpage/header_with_searchbox.dart';
import 'package:smart_polnes/mainpage/menu_pertama.dart';
import 'package:smart_polnes/mainpage/menu_kedua.dart';
import 'package:smart_polnes/mainpage/presensi_kehadiran.dart';
import 'package:smart_polnes/mainpage/title_with_more_btn.dart';


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
        MenuPertama(),
        MenuKedua(),

        TitleWithMoreBtn(
          title: "Rekap Presensi",
          press: () {},
          ),
        PresensiKehadiran(),
        ]
      ),
    );
  }
}
