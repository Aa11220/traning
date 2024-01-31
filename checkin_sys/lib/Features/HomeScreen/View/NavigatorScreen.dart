import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';

import '../../../Controller/ScreenSelector.dart';
import '../../CalanderPage/Views/CalanderPage.dart';
import '../../Leave/View/LeavingScreen.dart';
import '../../Map/View/ScreenMap.dart';
import '../../Profile/View/ProfileScreen.dart';

import 'HomeScreen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});
  static const path = "/Navigator";
  @override
  State<NavigatorScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NavigatorScreen> {
  String formattedTime = DateFormat("hh:mm a").format(DateTime.now());
  String formattedDate = DateFormat("MMM d. yyyy EEEE").format(DateTime.now());
  List List_of_Views = [
    HomeScreen(),
    CalanderPage(),
    LeavingSccreen(),
    MapScreen(),
    ProfileScreen()
  ];
  int _selecteditem = 0;
  DateTime? checkedin;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          // height: MediaQuery.of(context).size.height * 0.05,
          // padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: GNav(
            backgroundColor: Color(0xFF1F5B41),
            activeColor: Colors.white,
            color: Colors.white,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            iconSize: MediaQuery.of(context).size.height * 0.025,
            textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.height * 0.018,
                color: Colors.white),
            tabBackgroundColor: Color(0xFFD1AF3F),
            selectedIndex: Get.find<ScreenController>().selected.value > 3
                ? -1
                : Get.find<ScreenController>().selected.value,
            onTabChange: (index) {
              // setState(() {
              //   _selecteditem = index;
              // });
              Get.find<ScreenController>().selected.value = index;
            },
            tabMargin: EdgeInsets.symmetric(vertical: 16),
            gap: 8,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: "Home",
              ),
              GButton(
                icon: Icons.date_range,
                text: "History",
              ),
              GButton(
                icon: Icons.account_circle_outlined,
                text: "Profile",
              ),
              GButton(
                icon: FontAwesomeIcons.locationDot,
                text: "Map",
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => List_of_Views[Get.find<ScreenController>()
          .selected
          .value]) /* Center(child: Text("red")) */
      ,
    ));
  }
}
