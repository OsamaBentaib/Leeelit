import 'package:flutter/material.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  const ProductTitleWithImage({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Text(
      //       "Aristocratic Hand Bag",
      //       style: TextStyle(color: dark),
      //     ),
      //     Text(
      //       product.title + " " + product.title,
      //       style: Theme.of(context)
      //           .textTheme
      //           .headline4!
      //           .copyWith(color: dark, fontWeight: FontWeight.bold),
      //     ),
      //     SizedBox(height: 20),
      //     Row(
      //       children: <Widget>[
      //         RichText(
      //           text: TextSpan(
      //             children: [
      //               TextSpan(text: "Price\n"),
      //               TextSpan(
      //                 text: "\$${product.price}",
      //                 style: Theme.of(context)
      //                     .textTheme
      //                     .headline4!
      //                     .copyWith(color: dark, fontWeight: FontWeight.bold),
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(width: 20),
      //         Expanded(
      //           child: Hero(
      //             tag: "${product.id}",
      //             child: Image.asset(
      //               product.image,
      //               fit: BoxFit.fill,
      //             ),
      //           ),
      //         )
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
