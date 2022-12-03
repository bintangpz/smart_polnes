import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/pandabar.dart';


class Panda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String page = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        buttonData: [
          PandaBarButtonData(
            id: 'Dashboard',
            icon: Icons.dashboard,
            title: 'Dashboard',
          ),
          PandaBarButtonData(
            id: 'Absensi',
            icon: Icons.book,
            title: 'Absensi'
          ),
          PandaBarButtonData(
            id: 'Jadwal Kuliah',
            icon: Icons.account_balance_wallet,
            title: 'Jadwal Kuliah'
          ),
          PandaBarButtonData(
            id: 'Informasi',
            icon: Icons.notifications,
            title: 'Informasi'
          ),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                content: Text('Fab Button Pressed!'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('Close'),
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );
            }
          );
        },
      ),
    );
  }
}