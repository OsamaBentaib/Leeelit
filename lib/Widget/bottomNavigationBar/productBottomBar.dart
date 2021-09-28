import 'package:flutter/material.dart';
import 'package:wearift/Components/Buttons/Button.dart';
import 'package:wearift/Components/Buttons/ButtonOutline.dart';
import 'package:wearift/Theme/colors.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(
        bottom: 30,
        left: 15,
        right: 15,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              height: 40,
              child: MaterialButton(
                onPressed: () {},
                elevation: 0,
                child: Container(
                  child: Text(
                    "View item",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              height: 40,
              child: MaterialButton(
                onPressed: () {},
                elevation: 0,
                color: dark,
                child: Container(
                  child: Text(
                    "Add to bag",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
