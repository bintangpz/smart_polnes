import 'package:flutter/material.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: size.height * 0.2,
      child: Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 60,
          ),
          height: size.height * 0.2 - 27,
          decoration: const BoxDecoration(color: Colors.blue,
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
          ),
        ),
        child: Row(
          children: <Widget>[
            Text(
              'Selamat Datang!', 
            style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Image.asset("images/logo_ti.png")
          ]
        )
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 30), // Lebar Kolom Search
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), 
          boxShadow: [
            BoxShadow(
              offset: const Offset(0,10),
              blurRadius: 50,
              color: Colors.blue.withOpacity(0.23),
            )
          ]
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.blue.withOpacity(0.5),
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: const Icon(Icons.search),
          ),
        ),
      ),),
    ],
      ),
     );
  }
}