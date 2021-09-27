import 'package:flutter/material.dart';
import 'package:wearift/Components/Buttons/Button.dart';
import 'package:wearift/Components/Buttons/ButtonOutline.dart';
import 'package:wearift/Components/Heading/Heading.dart';
import 'package:wearift/Screens/LoginScreen/LoginScreen.dart';
import 'package:wearift/Screens/SignupScreen/SignupScreen.dart';
import 'package:wearift/utils/animation/FadeAnimation.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Heading(
                      title: "Welcome",
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.2,
                      Text(
                        "Automatic identity verification which enables you to verify your identity",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              FadeAnimation(
                  1.4,
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                    //     image: DecorationImage(
                      //         image: AssetImage(
                      //     'images/illustration.png',
                      //   ),
                      // ),
                      ),
                ),
              ),
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1.5,
                      ButtonOutline(
                      press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                          ),
                        );
                        },
                        title: "Login",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.6,
                      Button(
                      press: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                        title: "Sign up",
                      color: Colors.yellow,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
