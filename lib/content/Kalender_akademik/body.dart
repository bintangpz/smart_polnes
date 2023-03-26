import 'package:flutter/material.dart';
import 'package:smart_polnes/aset/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 3,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: Colors.blue.withOpacity(.29),
                    ),
                  ],
                  image: const DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    image: AssetImage("images/kalender_polnes.jpg"),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
