import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smart_polnes/content/qr_code/body.dart';
import 'package:smart_polnes/sidemenu_content.dart';

final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

class QRScan extends StatelessWidget {
  const QRScan({super.key});

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _sideMenuKey,
      menu: const SideMenuContent(),
      type: SideMenuType.slideNRotate,
      child: Scaffold(
        appBar: buildAppBar(),
        body: const BodyQRScan(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          final state = _sideMenuKey.currentState;
          if (state!.isOpened) {
            state.closeSideMenu();
          } // close side menu
          else {
            state.openSideMenu();
          } // open side menu
        },
      ),
    );
  }
}
