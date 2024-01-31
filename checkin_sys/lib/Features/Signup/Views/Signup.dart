import 'package:checkin_sys/Features/Login/view/Login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'checkCode.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const path = "/signup";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.height * .03),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  AspectRatio(
                    aspectRatio: 6 / 2,
                    child: Image.asset(
                      "Assets/SmartValiageLogin.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    height: 96,
                  ),
                  Text(
                    "Enter your work Email",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height * .02),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value != null && value.isNotEmpty == true) {
                            return null;
                          }
                          return "Error";
                        },
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04),
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                          // fillColor: Color(0xFF808080),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide(
                              color: Color(0xFF808080),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xFF808080),
                              width: 2.0,
                            ),
                          ),
                          hintText: "name@work-email.com",
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 96,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(SignUpVarification.Path);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF014421),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "check my company account",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.width * .03),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "already have an account?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize:
                                  MediaQuery.of(context).size.height * .02),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Sign in to an existing workspace",
                                style: TextStyle(
                                    color: Color(0xFF014421),
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            .04),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // context.go(Signin.route);
                                    Navigator.of(context).pushNamed(Login.path);
                                  },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
