import 'package:flutter/material.dart';
import 'package:smart_polnes/content/kalender_akademik.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KalenderAkademik(),
    );
  }
}