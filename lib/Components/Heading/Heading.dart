import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  final double size;
  const Heading({Key? key, required this.title, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: size),
    );
  }
}
