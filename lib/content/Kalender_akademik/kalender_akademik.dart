import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smart_polnes/content/Kalender_akademik/body.dart';
import 'package:smart_polnes/sidemenu_content.dart';

final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

class KalenderAkademik extends StatelessWidget {
  const KalenderAkademik({super.key});

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _sideMenuKey,
      menu: const SideMenuContent(),
      type: SideMenuType.slideNRotate,
      child: Scaffold(
        appBar: buildAppBar(),
        body: const Body(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
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
