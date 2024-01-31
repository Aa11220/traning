import 'package:flutter/material.dart';

import 'Login.dart';

class NewPasswordSetter extends StatefulWidget {
  const NewPasswordSetter({super.key});
  static const String Path = "/SetNewPassword";
  @override
  State<NewPasswordSetter> createState() => _NewPasswordSetterState();
}

class _NewPasswordSetterState extends State<NewPasswordSetter> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        Navigator.of(context).popUntil(ModalRoute.withName(Login.path));
      },
      child: Scaffold(
        appBar: AppBar(title: Text('new password')),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter New Password",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .04),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .04),
                      decoration: InputDecoration(
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      "confirm  Password",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .04),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .04),
                      decoration: InputDecoration(
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF014421),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: double.infinity,
                      child: Center(
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
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
