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
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                // For  demo we use fixed height  and width
                // Now we dont need them
                // height: 180,
                // width: double.infinity,
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20 / 4),
              child: Text(
                // products is out demo list
                product.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              "\$${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
