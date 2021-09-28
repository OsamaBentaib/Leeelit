import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wearift/APIs/products.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/Widget/AppBar/HomeAppBar.dart';
import 'package:wearift/Widget/ProductItem/ProductItem.dart';
import 'package:wearift/graphql/client.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    readAllPosts();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          // exploreAppBar(),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: white,
                    border: Border(
                      top: BorderSide(
                        color: kBorderColor,
                      ),
                      right: BorderSide(
                        color: kBorderColor,
                      ),
                    ),
                  ),
                  child: Center(
                    child: ProductItemWidget(
                      index: index,
                      product: products[index],
                      press: () {},
                    ),
                  ),
                );
              },
              childCount: products.length,
            ),
          ),
        ],
      ),
    );
  }
}
