import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/ScreenSelector.dart';
import '../../HomeScreen/View/NavigatorScreen.dart';
import '../../Profile/View/ProfileScreen.dart';
import '../../Signup/Views/Signup.dart';
import 'ForgetPassword.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const path = "/Login";
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * .02,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text("Log in",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Center(
                child: Image.asset(
                  fit: BoxFit.cover,
                  "Assets/SmartValiageLogin.png",
                  width: MediaQuery.of(context).size.width * .4,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .011,
              ),
              Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "username",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .06),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04),
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 5),
                            child: Text("@",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            .06)),
                          ),
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
                          hintText: "Ex: abc@example.com",
                        ),
                      ),
                      Text(
                        "password",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .06),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            size: MediaQuery.of(context).size.width * .06,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.remove_red_eye,
                              size: MediaQuery.of(context).size.width * .06,
                            ),
                          ),
                          // fillColor: Color(0xFF808080),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
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
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Align(
                          alignment: FractionalOffset.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8, top: 8, left: 8),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Forgot Password?",
                                    style: TextStyle(
                                        color: Color(0xFF014421),
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                .04),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // context.go(Signin.route);
                                        Navigator.of(context)
                                            .pushNamed(ForgetPassword.Path);
                                      },
                                  )
                                ],
                              ),
                            ),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.find<ScreenController>().selected.value = 4;
                          Navigator.of(context).pushNamed(NavigatorScreen.path);
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
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .03),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 9 / 1,
                        child: Icon(
                          Icons.fingerprint,
                          size: MediaQuery.of(context).size.height * .04,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account?  ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                            children: [
                              TextSpan(
                                text: "sign up",
                                style: TextStyle(
                                    color: Color(0xFF014421),
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            .04),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // context.go(Signin.route);
                                    Navigator.of(context)
                                        .pushNamed(SignupScreen.path);
                                    print("object");
                                  },
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
