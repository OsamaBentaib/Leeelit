import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wearift/Components/icons/HandBag.dart';
import 'package:wearift/Theme/colors.dart';

AppBar wishlistAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: appBarTitle(),
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        icon: HandBag(
          color: dark,
          size: 24,
        ),
        color: dark,
        iconSize: 24.0,
        onPressed: () {},
      ),
      SizedBox(width: 20 / 2)
    ],
  );
}

Widget appBarTitle({label, obscureText = false}) {
  return Container(
    child: Text(
      "Wishlist",
      style: TextStyle(
        color: dark,
        fontWeight: FontWeight.w800,
        fontSize: 30,
      ),
    ),
  );
}