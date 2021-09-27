import 'package:flutter/material.dart';
import 'package:wearift/APIs/products.dart';
import 'package:wearift/Widget/ProductItem/ProductItem.dart';

class RecommendedProducts extends StatefulWidget {
  RecommendedProducts({Key? key}) : super(key: key);

  @override
  _RecommendedProductsState createState() => _RecommendedProductsState();
}

class _RecommendedProductsState extends State<RecommendedProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // child: GridView.builder(
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //     ),
        //     itemCount: 300,
        //     itemBuilder: (BuildContext context, int index) {
        //       return Container(
        //         decoration: BoxDecoration(
        //           color: Colors.grey[200],
        //         ),
        //         height: 300,
        //       );
        //     }),
        // itemBuilder: (context, index) => ProductItemWidget(
        //   index: index,
        //   product: products[index],
        //   press: () {},
        // ),
        // ),
        );
  }
}
