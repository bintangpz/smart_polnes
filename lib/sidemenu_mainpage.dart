// ignore_for_file: use_build_context_synchronously

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smart_polnes/content/data_mahasiswa/persentase_kehadiran.dart';
import 'package:smart_polnes/content/qr_code/qr_scanner.dart';
import 'package:smart_polnes/loginpage/login_view.dart';
import 'content/Kalender_akademik/kalender_akademik.dart';

class SideMenuMainPage extends StatelessWidget {
  const SideMenuMainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("images/logo_ti.png"),
                  backgroundColor: Colors.white,
                  radius: 22.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello, Bagus bintang",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {
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
            leading: const Icon(Icons.newspaper_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Info Terbaru"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
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
            leading: const Icon(Icons.people_outline,
                size: 20.0, color: Colors.white),
            title: const Text("Status Dosen"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
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
            leading: const Icon(Icons.door_front_door_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Status Ruangan"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
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
            leading: const Icon(Icons.credit_score_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("KHS"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QRScan()));
            },
            leading: const Icon(Icons.present_to_all,
                size: 20.0, color: Colors.white),
            title: const Text("Absensi Online"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PersentaseMahasiswa(key: key)));
            },
            leading:
                const Icon(Icons.credit_score, size: 20.0, color: Colors.white),
            title: const Text("Chart Mahasiswa"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const KalenderAkademik()));
            },
            leading: const Icon(Icons.calendar_month,
                size: 20.0, color: Colors.white),
            title: const Text("Kalender Akademik"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
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
            leading: const Icon(Icons.today, size: 20.0, color: Colors.white),
            title: const Text("Jadwal Kuliah"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
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
            leading:
                const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: const Text("Akun Pengguna"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen(key: key)));
            },
            leading: const Icon(Icons.logout_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Keluar"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
