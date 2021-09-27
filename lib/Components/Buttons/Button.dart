import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function() press;
  final String title;
  final Color color;
  const Button({
    Key? key,
    required this.press,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 3,
        left: 3,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black),
          top: BorderSide(color: Colors.black),
          left: BorderSide(color: Colors.black),
          right: BorderSide(color: Colors.black),
        ),
      ),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 50,
        onPressed: press,
        color: color,
        elevation: 0,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(50),
        // ),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}
