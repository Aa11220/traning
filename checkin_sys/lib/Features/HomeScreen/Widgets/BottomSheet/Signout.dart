import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../Controller/DateController.dart';
import '../../../../Utility/Constrains.dart';
import '../../../Map/Controller/MapController.dart';
import '../Sliderbottomnavigation.dart';
import 'package:flutter/material.dart';

class ChossePlaceLogout extends StatefulWidget {
  const ChossePlaceLogout({super.key, required this.controller});
  final PageController controller;

  @override
  State<ChossePlaceLogout> createState() => _ChossePlaceState();
}

class _ChossePlaceState extends State<ChossePlaceLogout> {
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
                  Text: "swipe right to punch out",
                  Do: () {
                    Get.find<MyMapController>().loc.value = null;
                    Get.find<MyMapController>().locationStatus.value?.cancel();
                    Get.find<MyMapController>().locationStatus.value = null;
                    Get.find<DateController>().SetEndDateTime(DateTime.now());

                    Get.find<DateController>().calcDutation();
                    Get.find<DateController>().islogedin.value = false;
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
                                  "Check out",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Today at ${DateFormat('hh:mm a').format(Get.find<DateController>().Chekout.value!)}",
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
                    print("checkout");

                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        if (mounted) {
                          // Check if the context is still valid
                          widget.controller.jumpToPage(1);
                        }
                      },
                      child: Text(
                        "Choose another attendance type",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF215B42)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
