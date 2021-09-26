import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wearift/Containers/RecommendedProducts/RecommendedProducts.dart';
import 'package:wearift/Widget/AppBar/HomeAppBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              RecommendedProducts(),
          ],
        ),  
    );
  }
}
