import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smart_polnes/content/data_mahasiswa/daftar_nilai.dart';
import 'package:smart_polnes/content/data_mahasiswa/persentase_kehadiran.dart';
import 'package:smart_polnes/sidemenu_content.dart';

final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

class ChartMahasiswa extends StatelessWidget {
  const ChartMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SingleChildScrollView(
      child: Column(
        children: <Widget>[
          PresensiKehadiran(),
          DaftarNilai(),
        ],
      ),
    );
    return SideMenu(
      key: _sideMenuKey,
      menu: SideMenuContent(),
      type: SideMenuType.slideNRotate,
      child: Scaffold(
        appBar: buildAppBar(),
        body: ChartMahasiswa(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          final _state = _sideMenuKey.currentState;
          if (_state!.isOpened)
            _state.closeSideMenu(); // close side menu
          else
            _state.openSideMenu(); // open side menu
        },
      ),
    );
  }
}
