import 'package:flutter/material.dart';
import 'package:smart_polnes/header_with_searchbox.dart';
import 'package:smart_polnes/constants.dart';
import 'package:smart_polnes/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Info Terbaru",
            press: () {},
          ),
          Container(
            width: size.width * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset("images/logo_enjoy.jpg"),
                Container(
                  margin: EdgeInsets.only(
                    left: kDefaultPadding,
                    top: kDefaultPadding/2,
                    bottom: kDefaultPadding* 2.5,
                  ),
                  padding: EdgeInsets.all(kDefaultPadding/2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.21), 
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text:TextSpan(
                          children: [],
                        ),
                      ),
                    ]
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
