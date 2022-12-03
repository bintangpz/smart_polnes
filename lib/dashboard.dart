import 'dart:math' as math show pi;

import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:smart_polnes/login_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SidebarPage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Yay! Button Pressed!'),
            ));
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation),
        ),
      ),
    );
  }
}
class SidebarPage extends StatefulWidget {
  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  late List<CollapsibleItem> _items;
  late String _headline;
  AssetImage _avatarImg = AssetImage('images/logo_ti.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Dashboard',
        icon: Icons.assessment,
        onPressed: () => setState(() => _headline = 'DashBoard'),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Info Terbaru',
        icon: Icons.trending_up,
        onPressed: () => setState(() => _headline = 'Info Terbaru'),
      ),
      CollapsibleItem(
        text: 'Jadwal Dosen',
        icon: Icons.co_present,
        onPressed: () => setState(() => _headline = 'Jadwal Dosen'),
      ),
      CollapsibleItem(
        text: 'Status Ruangan',
        icon: Icons.door_front_door,
        onPressed: () => setState(() => _headline = 'Status Ruangan'),
      ),
      CollapsibleItem(
        text: 'KHS',
        icon: Icons.credit_score,
        onPressed: () => setState(() => _headline = 'KHS'),
      ),
      CollapsibleItem(
        text: 'Kalender Akademik',
        icon: Icons.calendar_month,
        onPressed: () => setState(() => _headline = 'Kalender Akademik'),
      ),
      CollapsibleItem(
        text: 'Jadwal Kuliah',
        icon: Icons.today,
        onPressed: () => setState(() => _headline = 'Jadwal Kuliah'),
      ),
      CollapsibleItem(
        text: 'Informasi',
        icon: Icons.info,
        onPressed: () => setState(() => _headline = 'info'),
      ),
      CollapsibleItem(
        text: 'logout',
        icon: Icons.logout,
        onPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder:(context) => LoginScreen())),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        isCollapsed: MediaQuery.of(context).size.width <= 800,
        items: _items,
        avatarImg: _avatarImg,
        title: 'Bagus Bintang',
        onTitleTap: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Comingsoon')));
        },
        body: _body(size, context),
        backgroundColor: Colors.black,
        selectedTextColor: Colors.limeAccent,
        textStyle: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
        titleStyle: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        toggleTitleStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        sidebarBoxShadow: [
          BoxShadow(
            color: Colors.indigo,
            blurRadius: 20,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
          BoxShadow(
            color: Colors.green,
            blurRadius: 50,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: Center(
        child: Transform.rotate(
          angle: math.pi / 2,
          child: Transform.translate(
            offset: Offset(-size.height * 0.3, -size.width * 0.23),
            child: Text(
              _headline,
              style: Theme.of(context).textTheme.headline1,
              overflow: TextOverflow.visible,
              softWrap: false,
            ),
          ),
        ),
      ),
    );
  }
}
