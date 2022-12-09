import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smart_polnes/mainpage/sidemenu.dart';

final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _sideMenuKey,
      menu: SideMenuBar(title: 'Halo,'),
      type: SideMenuType.slideNRotate,
      child: Scaffold(
        appBar: AppBar(
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
        ),
      ),
    );
  }
}
