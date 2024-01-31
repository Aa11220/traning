import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';

import '../../../Controller/DateController.dart';
import '../Widgets/ButtonHomeScreen.dart';
import '../Widgets/HomeScreenHeader.dart';
import '../Widgets/ItemHomeSceen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String formattedTime = DateFormat("hh:mm a").format(DateTime.now());
  String formattedDate = DateFormat("MMM d. yyyy EEEE").format(DateTime.now());
  Timer? ClockTimer;
  @override
  void dispose() {
    ClockTimer!.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void deactivate() {
    ClockTimer!.cancel();
    super.deactivate();
  }

  String formatDurationToHoursMinutes(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }

  DateTime? checkedin;
  @override
  Widget build(BuildContext context) {
    return
        // bottomNavigationBar: Container(
        //   // height: MediaQuery.of(context).size.height * 0.05,
        //   // padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        //   clipBehavior: Clip.hardEdge,
        //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        //   margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        //   child: GNav(
        //     backgroundColor: Color(0xFF1F5B41),
        //     activeColor: Colors.white,
        //     color: Colors.white,
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     iconSize: MediaQuery.of(context).size.height * 0.025,
        //     textStyle: TextStyle(
        //         fontWeight: FontWeight.w500,
        //         fontSize: MediaQuery.of(context).size.height * 0.018,
        //         color: Colors.white),
        //     tabBackgroundColor: Color(0xFFCBAA6D),
        //     tabMargin: EdgeInsets.symmetric(vertical: 16),
        //     gap: 8,
        //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //     tabs: [
        //       GButton(
        //         icon: Icons.home_outlined,
        //         text: "Home",
        //       ),
        //       GButton(
        //         icon: Icons.date_range,
        //         text: "History",
        //       ),
        //       GButton(
        //         icon: Icons.account_circle_outlined,
        //         text: "Profile",
        //       ),
        //       GButton(
        //         icon: FontAwesomeIcons.locationDot,
        //         text: "Map",
        //       ),
        //     ],
        //   ),
        // ),
        Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeScreenHeader(),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.06,
          // ),
          // SliderBottomNavigation(),

          StatefulBuilder(
            builder: (context, setState) {
              ClockTimer = Timer.periodic(Duration(seconds: 5), (timer) {
                if (mounted) {
                  setState(() {
                    formattedTime =
                        DateFormat('hh:mm a').format(DateTime.now());
                    formattedDate =
                        DateFormat("MMM d. yyyy-EEEE").format(DateTime.now());
                  });
                }
              });

              return Container(
                width: MediaQuery.of(context).size.width * .62,
                height: MediaQuery.of(context).size.height * .14,
                child: Column(children: [
                  Text(formattedTime,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .06,
                          fontWeight: FontWeight.w500)),
                  FittedBox(
                    child: Text(
                      formattedDate,
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: MediaQuery.of(context).size.height * .02,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ]),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          ButtonHomeScreen(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          // HomeScreenClock()
          Container(
            height: MediaQuery.of(context).size.height * .09,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                    () => ItemHomeScreen(
                      image: "Assets/tabler_clock-share.png",
                      Title: Get.find<DateController>().Checkin.value == null
                          ? "--:--"
                          : DateFormat('hh:mm a').format(
                              Get.find<DateController>().Checkin.value!),
                      type: "check in",
                    ),
                  ),
                  Obx(
                    () => ItemHomeScreen(
                      image: "Assets/tabler_clock-share1.png",
                      Title: Get.find<DateController>().Chekout.value == null
                          ? "--:--"
                          : DateFormat('hh:mm a').format(
                              Get.find<DateController>().Chekout.value!),
                      type: "check out",
                    ),
                  ),
                  Obx(
                    () => ItemHomeScreen(
                      image: "Assets/tabler_clock-share2.png",
                      Title: Get.find<DateController>().duration.value == null
                          ? "--:--"
                          : formatDurationToHoursMinutes(
                              Get.find<DateController>().duration.value!,
                            ),
                      // : DateFormat('hh:mm a')
                      //     .format(Get.find<DateController>().duration.value!),
                      type: "total hrs",
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
