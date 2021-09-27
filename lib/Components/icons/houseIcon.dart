import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HouseIcon extends StatelessWidget {
  final double size;
  final Color color;
  final bool active;
  const HouseIcon(
      {Key? key, required this.size, required this.color, required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (active)
      return SvgPicture.string(
        '''
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
          <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
          <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
        </svg>
     ''',
        color: color,
        width: size,
        height: size,
      );
    return SvgPicture.string(
      '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
        <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
      </svg>
     ''',
      color: color,
      width: size,
      height: size,
    );
  }
}
