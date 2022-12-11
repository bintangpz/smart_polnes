import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:smart_polnes/content/Kalender_akademik/kalender_akademik.dart';
import 'package:smart_polnes/content/data_mahasiswa/persentase_kehadiran.dart';
import 'package:smart_polnes/content/qr_code/qr_scanner.dart';

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
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => QRScan()));
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Chart Mahasiswa",
            Icons: Icons.credit_score,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PersentaseMahasiswa()));
            },
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Kalender Akademik",
            Icons: Icons.calendar_month,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KalenderAkademik()));
            },
          ),
          SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Jadwal Kuliah",
            Icons: Icons.today,
            press: () {
              final snackBar = SnackBar(
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                content: AwesomeSnackbarContent(
                  title: 'ComingSoon!',
                  message: 'Ditunggu Update Selanjutnya!',
                  contentType: ContentType.success,
                ),
              );
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
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
            onTap: press,
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
