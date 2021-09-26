import 'package:flutter/material.dart';
import 'package:wearift/Components/icons/HandBag.dart';
import 'package:wearift/Theme/colors.dart';

SliverAppBar exploreAppBar() {
  return SliverAppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    pinned: true,
    expandedHeight: 200.0,
    flexibleSpace: FlexibleSpaceBar(
      title: appBarTitle(),
    ),
    centerTitle: false,
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
      SizedBox(
        width: 20 / 2,
      )
    ],
  );
}

Widget appBarTitle({label, obscureText = false}) {
  return Container(
    child: Text(
      "Explore.",
      style: TextStyle(
        color: dark,
        fontWeight: FontWeight.w800,
        fontSize: 30,
      ),
    ),
  );
}
