import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F7),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: <Widget>[
            SvgPicture.asset("icons/search.svg"),
            SizedBox(width: 16),
            Text(
              "Search for anything",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFFA0A5BD),
              ),
            )
          ],
        ),
      ),
    );
  }
}
