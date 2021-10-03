import 'package:flutter/material.dart';
import 'package:wearift/APIs/products.dart';
import 'package:wearift/Components/Heading/Heading.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/Widget/AppBar/ProductAppBar.dart';
import 'package:wearift/Widget/ProductItem/ProductItem.dart';
import 'package:wearift/Widget/bottomNavigationBar/productBottomBar.dart';
import 'package:wearift/models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: productAppBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
              child: Hero(
                tag: "${product.code}",
                child: Image.network(
                  product.articles![0].normalPicture![0].url as String,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    // products is out demo list
                    product.name as String,
                    style: TextStyle(
                      color: kTextLightColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 20,
                    right: 10,
                  ),
                  child: Text(
                    // products is out demo list
                    product.name as String,
                    style: TextStyle(
                      color: kTextLightColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Heading(
                    title: "Similar to this item",
                    size: 19,
                  ),
                ),
              ],
            ),
          ),
          // SliverGrid(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 0,
          //     crossAxisSpacing: 0,
          //     childAspectRatio: 0.75,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         decoration: BoxDecoration(
          //           color: white,
          //           border: Border(
          //             top: BorderSide(
          //               color: kBorderColor,
          //             ),
          //             right: BorderSide(
          //               color: kBorderColor,
          //             ),
          //           ),
          //         ),
          //         child: Center(
          //           child: ProductItemWidget(
          //             index: index,
          //             product: products[index],
          //             press: () {},
          //           ),
          //         ),
          //       );
          //     },
          //     childCount: products.length,
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: ProductBottomBar(),
    );
  }
}
