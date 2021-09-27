import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiX extends StatelessWidget {
  final int size;
  final Color color;
  const FiX({Key? key, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string('''
     <svg stroke="$color" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="$size" width="$size" xmlns="http://www.w3.org/2000/svg"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
    ''');
  }
}
