import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wearift/Components/icons/HandBag.dart';
import 'package:wearift/Theme/colors.dart';

AppBar productAppBar(context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        CupertinoIcons.back,
        color: dark,
        size: 24,
      ),
    ),
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
