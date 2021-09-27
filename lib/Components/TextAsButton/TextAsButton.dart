import 'package:flutter/material.dart';

class TextAsButton extends StatelessWidget {
  final String title;
  final Function() press;
  final TextStyle? style;
  const TextAsButton({
    Key? key,
    required this.title,
    required this.press,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Text(
        title,
        style: style,
      ),
    );
  }
}
