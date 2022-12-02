import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:smart_polnes/intro_model.dart';
import 'package:smart_polnes/color_intro.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final List<Intro> introList = [
    Intro(
        image: "assets/images/logo_polnes.png",
        title: "Welcome",
        description: "Selamat Datang Di Aplikasi Smart TI"),
    Intro(
      image: "assets/images/logo_ti.png",
      title: "Smart TI",
      description:
          "Aplikasi ini digunakan untuk memudahkan segala kebutuhan Civitas TI",
    ),
    Intro(
      image: "assets/images/logo_enjoy.jpg",
      title: "Enjoy",
      description: "Selamat Menggunakan Aplikasi ini",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Swiper.children(
        index: 0,
        autoplay: false,
        loop: false,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(bottom: 20),
          builder: DotSwiperPaginationBuilder(
            color: ColorIntroPalette.dotColor,
            activeColor: ColorIntroPalette.dotActiveColor,
            size: 10,
            activeSize: 10,
          ),
        ),
        control: SwiperControl(iconNext: null, iconPrevious: null),
        children: _buildPage(context),
      ),
    );
  }

  List<Widget> _buildPage(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < introList.length; i++) {
      Intro intro = introList[i];
      widgets.add(
        Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 6,
          ),
          child: ListView(
            children: <Widget>[
              Image.asset(
                intro.image,
                height: MediaQuery.of(context).size.height / 3.5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 12,
                ),
              ),
              Center(
                child: Text(
                  intro.title,
                  style: TextStyle(
                    color: ColorIntroPalette.titleColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 20,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height / 20,
                ),
                child: Text(
                  intro.description,
                  style: TextStyle(
                    color: ColorIntroPalette.descriptionColor,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return widgets;
  }
}
