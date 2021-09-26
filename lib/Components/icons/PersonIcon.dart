import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonIcon extends StatelessWidget {
  final double size;
  final Color color;
  final bool active;
  const PersonIcon(
      {Key? key, required this.size, required this.color, required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (active)
      return SvgPicture.string(
        '''
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
          <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
        </svg> 
        ''',
        color: color,
        width: size,
        height: size,
      );
    return SvgPicture.string(
      '''
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
      </svg>
     ''',
      color: color,
      width: size,
      height: size,
    );
  }
}