import 'package:flutter/material.dart';
import 'package:wearift/Screens/OnBoarding/OnBoardingScreen.dart';
import 'package:wearift/Theme/Theme.dart';

import 'Screens/AuthScreen/AuthScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wearit',
      theme: defaultTheme,
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


