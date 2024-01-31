// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../Controller/DateController.dart';
import '../Sliderbottomnavigation.dart';

class ChoosenItem extends StatefulWidget {
  const ChoosenItem({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final PageController controller;

  @override
  State<ChoosenItem> createState() => _ChoosenItemState();
}

class _ChoosenItemState extends State<ChoosenItem> {
  int groupedvalue = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      // height: 1,
                      width: constraints.maxWidth * 0.18,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1), color: Colors.black54),
                    ),
                    RadioListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      activeColor: Color(0xFF215B42),
                      value: 0,
                      groupValue: groupedvalue,
                      onChanged: (value) {
                        groupedvalue = value!;
                        setState(() {});
                      },
                      title: Row(
                        children: [
                          Image.asset(
                            "Assets/Vector.png",
                            color: groupedvalue == 0
                                ? Color(0xFF215B42)
                                : Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Office",
                            style: TextStyle(
                              color: groupedvalue == 0
                                  ? Color(0xFF215B42)
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RadioListTile(
                      activeColor: Color(0xFF215B42),
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: 1,
                      groupValue: groupedvalue,
                      onChanged: (value) {
                        groupedvalue = value!;
                        setState(() {});
                      },
                      title: Row(
                        children: [
                          Image.asset(
                            "Assets/Vector-1.png",
                            color: groupedvalue == 1
                                ? Color(0xFF215B42)
                                : Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Visit",
                            style: TextStyle(
                              color: groupedvalue == 1
                                  ? Color(0xFF215B42)
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RadioListTile(
                      activeColor: Color(0xFF215B42),
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: 2,
                      groupValue: groupedvalue,
                      onChanged: (value) {
                        groupedvalue = value!;
                        setState(() {});
                      },
                      title: Row(
                        children: [
                          Image.asset(
                            "Assets/Vector-2.png",
                            color: groupedvalue == 2
                                ? Color(0xFF215B42)
                                : Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Destination",
                            style: TextStyle(
                                color: groupedvalue == 2
                                    ? Color(0xFF215B42)
                                    : Colors.black),
                          ),
                        ],
                      ),
                    ),
                    RadioListTile(
                      activeColor: Color(0xFF215B42),
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: 3,
                      groupValue: groupedvalue,
                      onChanged: (value) {
                        groupedvalue = value!;
                        setState(() {});
                      },
                      title: Row(
                        children: [
                          Image.asset(
                            "Assets/Vector-3.png",
                            color: groupedvalue == 3
                                ? Color(0xFF215B42)
                                : Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Moving path",
                              style: TextStyle(
                                color: groupedvalue == 3
                                    ? Color(0xFF215B42)
                                    : Colors.black,
                              )),
                        ],
                      ),
                    ),
                    RadioListTile(
                      activeColor: Color(0xFF215B42),
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: 4,
                      groupValue: groupedvalue,
                      onChanged: (value) {
                        groupedvalue = value!;
                        setState(() {});
                      },
                      title: Row(
                        children: [
                          Image.asset(
                            "Assets/Vector-4.png",
                            color: groupedvalue == 4
                                ? Color(0xFF215B42)
                                : Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Online",
                              style: TextStyle(
                                color: groupedvalue == 4
                                    ? Color(0xFF215B42)
                                    : Colors.black,
                              )),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    SliderBottomNavigation(
                      Text: "Next",
                      initial: Color(0xFF215B42),
                      Do: () {
                        widget.controller.jumpToPage(
                            Get.find<DateController>().islogedin.value == false
                                ? 1
                                : 2);
                        print("object");
                      },
                    ),
                    Expanded(child: SizedBox())
                  ],
                ),
              ),
            ));
  }
}
