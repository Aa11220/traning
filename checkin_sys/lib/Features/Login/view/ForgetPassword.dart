import 'package:flutter/material.dart';

import 'Verification.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static const String Path = "/ForgetPassword";
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                  "Enter mobile number or email",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.height * .02),
                ),
                SizedBox(height: 8),
                TextFormField(
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04),
                  decoration: InputDecoration(
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Verification.Path);
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
                          Navigator.of(context).pushNamed(Verification.Path);
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF014421)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "back to login",
                        style: TextStyle(
                            color: Color(0xFF014421),
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width * .04),
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
}
