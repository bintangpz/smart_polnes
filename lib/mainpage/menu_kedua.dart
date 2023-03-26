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
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 10,
            ),
            child: DaftarMenu(
              text: "Absensi Online",
              icons: Icons.present_to_all,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const QRScan()));
              },
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Chart Mahasiswa",
            icons: Icons.credit_score,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PersentaseMahasiswa(key: key)));
            },
          ),
          const SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Kalender Akademik",
            icons: Icons.calendar_month,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const KalenderAkademik()));
            },
          ),
          const SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Jadwal Kuliah",
            icons: Icons.today,
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
    required this.icons,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData icons;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(130, 130),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.blue,
            onTap: press,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Icon(
                  icons,
                  size: 30,
                ),
                Text(
                  text,
                  style: const TextStyle(
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
