import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'NewPassword.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});
  static const String Path = "/Verification";

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("forget password")),
        body: Container(
          // color: Colors.red,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  "Enter Verification Code",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * .04),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: "If you didn’t receive a code,",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * .04),
                    children: [
                      TextSpan(
                        text: " Resend",
                        style: TextStyle(
                            color: Color(0xFF014421),
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * .04),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // context.go(Signin.route);
                            print("object");
                          },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularTextFiled(MediaQuery.of(context).size.height * .09),
                    CircularTextFiled(MediaQuery.of(context).size.height * .09),
                    CircularTextFiled(MediaQuery.of(context).size.height * .09),
                    CircularTextFiled(MediaQuery.of(context).size.height * .09),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(NewPasswordSetter.Path);
                    print("object");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF014421),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: double.infinity,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(NewPasswordSetter.Path);
                          print("object");
                        },
                        child: Text(
                          "Send",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.width * .04),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container CircularTextFiled(double size) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Color(0xFF014421))),
      child: Center(
        child: LayoutBuilder(builder: (context, constrains) {
          return SizedBox(
            // width: constrains.maxWidth * .1,
            child: TextFormField(
              buildCounter: (BuildContext context,
                      {int? currentLength, int? maxLength, bool? isFocused}) =>
                  null,
              keyboardType: TextInputType.number,
              cursorColor: Colors.transparent,
              maxLength: 1,
              autocorrect: false,
              enableSuggestions: false,

              style: TextStyle(
                  fontSize: constrains.maxWidth * .2,
                  color: Color(0xFF014421),
                  fontWeight: FontWeight.w600),

              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: constrains.maxWidth * .42,
                ),
                border: InputBorder.none,
                // border: OutlineInputBorder(
                //     // borderRadius: BorderRadius.circular(
                //     //     30.0), // Adjust radius as needed
                //     ),
                isCollapsed: true,
              ),
              // ... other TextFormField properties
            ),
          );
        }),
      ),
    );
  }
}
