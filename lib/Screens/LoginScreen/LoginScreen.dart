import 'package:flutter/material.dart';
import 'package:wearift/Components/Buttons/Button.dart';
import 'package:wearift/Components/Heading/Heading.dart';
import 'package:wearift/Components/TextAsButton/TextAsButton.dart';
import 'package:wearift/Layout/BaseLayout.dart';
import 'package:wearift/Screens/HomeScreen/HomeScreen.dart';
import 'package:wearift/Screens/SignupScreen/SignupScreen.dart';
import 'package:wearift/Widget/MakeInput/MakeInput.dart';
import 'package:wearift/utils/animation/FadeAnimation.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FadeAnimation(
                        1,
                        Heading(
                          title: "Login",
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        1.2,
                        Text(
                          "Login to your account",
                          style: TextStyle(
                            fontSize: 15,
                              color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                          1.2,
                          makeInput(
                            label: "Email",
                          ),
                        ),
                        FadeAnimation(
                          1.3,
                          makeInput(
                            label: "Password",
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  FadeAnimation(
                    1.4,
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                      ),
                        child: Button(
                        press: () {
                          Route route = MaterialPageRoute(
                                  builder: (context) => BaseLayout(),
                          );
                          Navigator.pushReplacement(
                            context,
                            route,
                          );
                        },
                          title: "Login",
                          color: Colors.greenAccent,
                        ),),
                  ),
                  FadeAnimation(
                    1.5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?"),
                          TextAsButton(
                          press: () {
                            Route route = MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            );
                            Navigator.pushReplacement(
                              context,
                              route,
                            );
                          },
                          title: "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                      ),
                  )
                ],
              ),
            ),
            FadeAnimation(
              1.2,
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                    //     image: AssetImage('images/background.png'),
                    //         fit: BoxFit.cover,
                    // ),
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
}
