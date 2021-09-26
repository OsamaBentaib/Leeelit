import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wearift/Widget/AppBar/WishlistAppBar.dart';

class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wishlistAppBar(),
      body: Padding(
        padding: EdgeInsets.only(
          left: 10,
          top: 40,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[],
        ),
      ),
    );
  }
}
