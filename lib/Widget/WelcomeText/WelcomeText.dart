import 'package:flutter/material.dart';
import 'package:wearift/Theme/styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Hey Alex,", style: kHeadingextStyle),
          Text("Find a course you want to learn", style: kSubheadingextStyle),
        ],
      ),
    );
  }
}
