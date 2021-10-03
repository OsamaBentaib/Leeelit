import 'package:flutter/material.dart';
import 'package:wearift/Components/Buttons/Button.dart';
import 'package:wearift/Screens/HomeScreen/HomeScreen.dart';
import 'package:wearift/Widget/MakeInput/MakeInput.dart';
import 'package:wearift/utils/animation/FadeAnimation.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(
                    1,
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    1.2,
                    Text(
                      "Create an account, It's free",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  FadeAnimation(
                    1.2,
                    makeInput(label: "Email"),
                  ),
                  FadeAnimation(
                    1.3,
                    makeInput(
                      label: "Password",
                      obscureText: true,
                    ),
                  ),
                  FadeAnimation(
                    1.4,
                    makeInput(
                      label: "Confirm Password",
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              FadeAnimation(
                1.5,
                Button(
                  press: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    );
                    Navigator.pushReplacement(
                      context,
                      route,
                    );
                  },
                  title: "Signup",
                  color: Colors.greenAccent,
                ),
              ),
              FadeAnimation(
                1.6,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    Text(
                      " Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
