import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  static const path = "/Edit";
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My info"),
          centerTitle: true,
          leading: SizedBox(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .12,
                  width: MediaQuery.of(context).size.height * .12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("Assets/Icon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.edit)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Expanded(
                  child: Form(
                      child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Employee Name",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
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
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Text(
                            "Email Address",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
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
                          Text(
                            "Mobile Number",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
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
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Text(
                            "Immigration",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
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
                          Text(
                            "gender",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
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
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Text(
                            "Department",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
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
                          Text(
                            "Jop Title",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
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
                        ],
                      ),
                    ),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
