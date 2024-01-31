import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../Controller/DateController.dart';
import '../../../../Utility/Constrains.dart';
import '../Sliderbottomnavigation.dart';
import 'package:flutter/material.dart';

class ChossePlace extends StatefulWidget {
  const ChossePlace({super.key});

  @override
  State<ChossePlace> createState() => _ChossePlaceState();
}

class _ChossePlaceState extends State<ChossePlace> {
  List<String> option = ["SmartVally"];
  @override
  Widget build(BuildContext context) {
    String currentOption = option[0];
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                RadioListTile(
                    secondary: Image.asset(
                      "Assets/SmartVIlage.png",
                    ),
                    title: Text("Smart Village"),
                    subtitle: Text("for information technology",
                        style: TextStyle(color: Color(0xFFBFBFBF))),
                    value: option[0],
                    groupValue: currentOption,
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    }),
                Expanded(child: SizedBox()),
                SliderBottomNavigation(
                  Text: "swipe right to punch in",
                  Do: () {
                    /*  if (Get.find<DateController>().Checkin.value == null) {
                      Get.find<DateController>().resetdutation();
                      Get.find<DateController>()
                          .SetStartDateTime(DateTime.now());
                      Get.find<DateController>().islogedin.value = true;
                      Get.snackbar(
                          backgroundColor: BackgroundColor,
                          titleText: Row(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Image.asset(
                                  "Assets/SmartVIlage.png",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "smart village attendance",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Check in",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Today at ${DateFormat('hh:mm a').format(Get.find<DateController>().Checkin.value!)}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          "",
                          "");
                      print("checkin");
                    } else if (Get.find<DateController>().Chekout.value ==
                        null) {
                      Get.find<DateController>().SetEndDateTime(DateTime.now());

                      Get.find<DateController>().calcDutation();
                      Get.find<DateController>().islogedin.value = false;
                      print("checkout");
                    } else {
                      Get.find<DateController>().resetdutation();

                      Get.find<DateController>()
                          .SetStartDateTime(DateTime.now());
                      Get.snackbar(
                          backgroundColor: BackgroundColor,
                          titleText: Row(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Image.asset(
                                  "Assets/SmartVIlage.png",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "smart village attendance",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Check in",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Today at ${DateFormat('hh:mm a').format(Get.find<DateController>().Checkin.value!)}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          "",
                          "");
                      Get.find<DateController>().islogedin.value = true;

                      Get.find<DateController>().SetEndDateTime(null);
                      print("reset");
                    } */

                    Get.find<DateController>().resetdutation();
                    Get.find<DateController>().SetEndDateTime(null);
                    Get.find<DateController>().SetStartDateTime(DateTime.now());
                    Get.find<DateController>().islogedin.value = true;
                    Get.snackbar(
                        backgroundColor: BackgroundColor,
                        titleText: Row(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Image.asset(
                                "Assets/SmartVIlage.png",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "smart village attendance",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Check in",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Today at ${DateFormat('hh:mm a').format(Get.find<DateController>().Checkin.value!)}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        "",
                        "");
                    print("checkin");
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
