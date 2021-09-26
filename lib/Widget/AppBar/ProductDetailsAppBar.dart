import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wearift/Theme/colors.dart';

AppBar productDetailsAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        'assets/icons/back.svg',
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg"),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset("assets/icons/cart.svg"),
        onPressed: () {},
      ),
      SizedBox(width: 20 / 2)
    ],
  );
}
