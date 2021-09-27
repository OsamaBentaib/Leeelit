import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wearift/Components/icons/FiX.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: white,
                    ),
                    child: FiX(size: 20, color: dark),
                  ),
                ),
                GestureDetector(
                  onTap: () => {},
                  child: SvgPicture.asset("icons/more-vertical.svg"),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 50,
                  color: kTextColor.withOpacity(.1),
                ),
              ],
            ),
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
              ),
              ),
            ),
        ],
      ),
      // SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       SizedBox(
      //         height: size.height,
      //         child: Stack(
      //           children: <Widget>[
      //             Container(
      //               margin: EdgeInsets.only(top: size.height * 0.3),
      //               padding: EdgeInsets.only(
      //                 top: size.height * 0.12,
      //                 left: 20,
      //                 right: 20,
      //               ),
      //               // height: 500,
      //               decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(24),
      //                   topRight: Radius.circular(24),
      //                 ),
      //               ),
      //               child: Column(
      //                 children: <Widget>[
      //                   ProductDescription(product: product),
      //                 ],
      //               ),
      //             ),
      //             ProductTitleWithImage(product: product),
      //             Positioned(
      //               right: 0,
      //               left: 0,
      //               bottom: 0,
      //               child: Container(
      //                 padding: EdgeInsets.all(20),
      //                 height: 100,
      //                 width: double.infinity,
      //                 decoration: BoxDecoration(
      //                   color: Colors.white,
      //                   borderRadius: BorderRadius.circular(40),
      //                   boxShadow: [
      //                     BoxShadow(
      //                       offset: Offset(0, 4),
      //                       blurRadius: 50,
      //                       color: kTextColor.withOpacity(.1),
      //                     ),
      //                   ],
      //                 ),
      //                 child: Row(
      //                   children: <Widget>[
      //                     Container(
      //                       padding: EdgeInsets.all(14),
      //                       height: 56,
      //                       width: 80,
      //                       decoration: BoxDecoration(
      //                         color: Color(0xFFFFEDEE),
      //                         borderRadius: BorderRadius.circular(40),
      //                       ),
      //                       child: SvgPicture.asset("icons/shopping-bag.svg"),
      //                     ),
      //                     SizedBox(width: 20),
      //                     Expanded(
      //                       child: Container(
      //                         alignment: Alignment.center,
      //                         height: 56,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(40),
      //                           color: kBlueColor,
      //                         ),
      //                         child: Text(
      //                           "Buy Now",
      //                           style: kSubtitleTextSyule.copyWith(
      //                             color: Colors.white,
      //                             fontWeight: FontWeight.bold,
      //                           ),
      //                         ),
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      //     Container(
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     color: Color(0xFFF5F4EF),
      //     image: DecorationImage(
      //       image: AssetImage("images/ux_big.png"),
      //       alignment: Alignment.topRight,
      //     ),
      //   ),
      //   child: Column(
      //     children: <Widget>[
      //       Padding(
      //         padding: EdgeInsets.only(left: 20, top: 50, right: 20),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: <Widget>[
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: <Widget>[
      //                 GestureDetector(
      //                   onTap: () => Navigator.pop(context),
      //                   child: SvgPicture.asset("icons/arrow-left.svg"),
      //                 ),
      //                 GestureDetector(
      //                   onTap: () => {},
      //                   child: SvgPicture.asset("icons/more-vertical.svg"),
      //                 )
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 300),
      //       Expanded(
      //         child: Container(
      //           width: double.infinity,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(50),
      //             color: Colors.white,
      //           ),
      //           child: Stack(
      //             children: <Widget>[
      //               Padding(
      //                 padding: const EdgeInsets.all(30),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: <Widget>[
      //                     Text("Course Content", style: kTitleTextStyle),
      //                     SizedBox(height: 30),
      //                   ],
      //                 ),
      //               ),

      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
