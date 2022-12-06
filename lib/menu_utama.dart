import 'package:flutter/material.dart';
import 'constants.dart';

class MenuUtama extends StatelessWidget {
  const MenuUtama({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget> [
          MenuCard(
              image: "images/logo_enjoy.jpg", 
              title: "Informasi", 
              press: () {},
              ),
          MenuCard(
              image: "images/logo_enjoy.jpg", 
              title: "Informasi", 
              press: () {},
              ),
          MenuCard(
              image: "images/logo_enjoy.jpg", 
              title: "Informasi", 
              press: () {},
              ),
          MenuCard(
              image: "images/logo_enjoy.jpg", 
              title: "Informasi", 
              press: () {},
              ),
          MenuCard(
              image: "images/logo_enjoy.jpg", 
              title: "Informasi", 
              press: () {},
              ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset("images/logo_enjoy.jpg"),
          GestureDetector(
            onTap: press,
            child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Text('$title', style: Theme.of(context).textTheme.button)
                  ],
                )),
          )
        ],
      ),
    );
  }
}