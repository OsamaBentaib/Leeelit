import 'package:flutter/material.dart';
import 'package:wearift/APIs/products.dart';
import 'package:wearift/Widget/ProductItem/ProductItem.dart';

class RecommendedProducts extends StatefulWidget {
  RecommendedProducts({Key? key}) : super(key: key);

  @override
  _RecommendedProductsState createState() => _RecommendedProductsState();
}

class _RecommendedProductsState extends State<RecommendedProducts> {
  final products = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          height: 300,
        ),
        // itemBuilder: (context, index) => ProductItemWidget(
        //   index: index,
        //   product: products[index],
        //   press: () {},
        // ),
      ),
    );
  }
}
