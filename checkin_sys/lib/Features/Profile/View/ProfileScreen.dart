import 'EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Login/view/Login.dart';
import '../Widgets/TopPart.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const String path = "/profileScreen";
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TopPart(),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.67,
            height: MediaQuery.of(context).size.height * 0.07,
            // Column(),
            child: Column(
              children: [
                Text(
                  "ahmed mohamed",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.width * .07,
                      height: 1),
                ),
                Text(
                  "+0020121212121212",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.width * .04,
                      height: 1),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(EditProfile.path),
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.048),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .08,
                  child: Center(
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      leading: Icon(
                        Icons.edit,
                        size: MediaQuery.of(context).size.height * .05,
                      ),
                      title: Text(
                        "edit profile",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .03,
                            height: 1),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        size: MediaQuery.of(context).size.height * .05,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .popUntil(ModalRoute.withName(Login.path)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .08,
                    child: Center(
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                        leading: Icon(
                          Icons.exit_to_app,
                          size: MediaQuery.of(context).size.height * .05,
                        ),
                        title: Text(
                          "log out",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * .03,
                              height: 1),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          size: MediaQuery.of(context).size.height * .05,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
