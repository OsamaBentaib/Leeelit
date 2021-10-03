import 'package:flutter/material.dart';

Widget makeInput({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
      ),
      SizedBox(
        height: 2,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 10,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Color(0xFFBDBDBD),
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
              color: Color(0xFFBDBDBD),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
