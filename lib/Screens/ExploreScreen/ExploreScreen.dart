import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wearift/APIs/products.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/Widget/AppBar/ExploreAppBar.dart';
import 'package:wearift/Widget/ProductItem/ProductItem.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          exploreAppBar(),
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
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
