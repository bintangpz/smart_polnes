import 'package:flutter/material.dart';
import 'package:smart_polnes/content/Kalender_akademik/body.dart';

class KalenderAkademik extends StatelessWidget {
  const KalenderAkademik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
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
