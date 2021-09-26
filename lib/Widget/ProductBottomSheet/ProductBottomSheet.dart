import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/Theme/styles.dart';

class ProductBottomSheet extends StatelessWidget {
  const ProductBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        padding: EdgeInsets.all(20),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 50,
              color: kTextColor.withOpacity(.1),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(14),
              height: 56,
              width: 80,
              decoration: BoxDecoration(
                color: Color(0xFFFFEDEE),
                borderRadius: BorderRadius.circular(40),
              ),
              child: SvgPicture.asset("icons/shopping-bag.svg"),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: kBlueColor,
                ),
                child: Text(
                  "Buy Now",
                  style: kSubtitleTextSyule.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
