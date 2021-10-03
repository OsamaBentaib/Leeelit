import 'package:flutter/material.dart';
import 'package:wearift/Screens/ProductDetailsScreen/ProductDetailsScreen.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/models/product.dart';

class ProductItemWidget extends StatefulWidget {
  final int index;
  final Product? product;
  final void Function() press;

  ProductItemWidget(
      {Key? key,
      required this.index,
      this.product,
    required this.press,
  }) : super(key: key);

  @override
  _ProductItemWidgetState createState() =>
      _ProductItemWidgetState(
        index: index,
        product: product,
        press: press,
      );
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  int index;
  Product? product;
  void Function() press;

  _ProductItemWidgetState({
    required this.index,
    this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
              product: product as Product,
            ),
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
                  // color: product.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${product!.code}",
                  child: Image.network(
                    product!.articles![0].logoPicture![0].url as String,
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
                product!.name as String,
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
              "\$${product!.price!.value as double}",
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
