import 'package:flutter/material.dart';
import 'package:wearift/models/product.dart';

class ProductDescription extends StatelessWidget {
  final Product product;
  const ProductDescription({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          product.description,
          style: TextStyle(height: 1.5),
        ),
      ),
    );
  }
}
