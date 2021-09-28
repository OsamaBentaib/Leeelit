import 'package:flutter/material.dart';
import 'package:wearift/Screens/ProductDetailsScreen/ProductDetailsScreen.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/Theme/styles.dart';
import 'package:wearift/models/categories.dart';
import 'package:wearift/models/product.dart';

class ProductItemWidget extends StatefulWidget {
  final int index;
  final Product product;
  final void Function() press;
  ProductItemWidget(
      {Key? key,
      required this.index,
      required this.product,
      required this.press})
      : super(key: key);

  @override
  _ProductItemWidgetState createState() =>
      _ProductItemWidgetState(index: index, product: product, press: press);
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  int index;
  Product product;
  void Function() press;
  _ProductItemWidgetState(
      {required this.index, required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(product: product),
          );
          Navigator.pushReplacement(
            context,
            route,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${product.id}$index",
                  child: Image.asset(
                    product.image,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Text(
                // products is out demo list
                product.title,
                style: TextStyle(
                  color: kTextLightColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Text(
              "\$${product.price}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
