import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {
  final Function() press;
  final String title;
  const ButtonOutline({
    Key? key,
    required this.press,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 50,
      onPressed: press,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
        ),
        // borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}
