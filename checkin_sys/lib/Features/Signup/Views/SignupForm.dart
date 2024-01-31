import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});
  static const String path = "/signupform";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your info"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "welcome to our family",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        color: Color(0xFF125B62)),
                  ),
                  Image.asset("Assets/SignupIcon.png",
                      height: MediaQuery.of(context).size.height * 0.04)
                ],
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "first name",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .035),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .04),
                    decoration: InputDecoration(
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
                          width: 1.0,
                        ),
                      ),
                      // hintText: "Ex: abc@example.com",
                    ),
                  ),
                  Text(
                    "last name",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .035),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .04),
                    decoration: InputDecoration(
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
                          width: 1.0,
                        ),
                      ),
                      // hintText: "Ex: abc@example.com",
                    ),
                  ),
                  Text(
                    "date of birth",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .035),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .04),
                    decoration: InputDecoration(
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
                          width: 1.0,
                        ),
                      ),
                      // hintText: "Ex: abc@example.com",
                    ),
                  ),
                  Text(
                    "Phone",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .035),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .04),
                    decoration: InputDecoration(
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
                          width: 1.0,
                        ),
                      ),
                      // hintText: "Ex: abc@example.com",
                    ),
                  ),
                  Text(
                    "identification number",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .035),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .04),
                    decoration: InputDecoration(
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
                          width: 1.0,
                        ),
                      ),
                      // hintText: "Ex: abc@example.com",
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  // Get.find<ScreenController>().selected.value = 4;
                  // Navigator.of(context).pushNamed(NavigatorScreen.path);
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
                      "request to join",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width * .03),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
