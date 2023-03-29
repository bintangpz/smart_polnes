import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class MenuPertama extends StatelessWidget {
  const MenuPertama({
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
              text: "Info Terbaru",
              icons: Icons.newspaper_outlined,
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
          ),
          const SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Status Dosen",
            icons: Icons.people_outline,
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
          const SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "Status Ruangan",
            icons: Icons.door_front_door_outlined,
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
          const SizedBox(
            width: 10,
          ),
          DaftarMenu(
            text: "KHS",
            icons: Icons.credit_score_outlined,
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
    //Size size = MediaQuery.of(context).size;
    return SizedBox.fromSize(
      size: const Size(100, 100),
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
                  size: 20,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
