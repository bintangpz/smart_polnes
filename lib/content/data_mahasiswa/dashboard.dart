import 'package:flutter/material.dart';
import 'package:smart_polnes/content/data_mahasiswa/daftar_nilai.dart';
import 'package:smart_polnes/content/data_mahasiswa/presensi_kehadiran.dart';

class ChartMahasiswa extends StatelessWidget {
  const ChartMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        PresensiKehadiran(),
        DaftarNilai(),
      ]),
    );
  }
}
