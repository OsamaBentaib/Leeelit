import 'package:flutter/cupertino.dart';
import 'package:wearift/Theme/styles.dart';

class OnBoardSlider extends StatelessWidget {
  final String title, image;
  const OnBoardSlider({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage(
                image,
              ),
              height: 300.0,
              width: 300.0,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            title,
            style: kTitleStyle,
          ),
        ],
      ),
    );
  }
}
