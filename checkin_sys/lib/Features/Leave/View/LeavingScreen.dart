import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../Controller/ScreenSelector.dart';
import '../Widgets/LeavingCard.dart';
import 'LeavingLIst.dart';

class LeavingSccreen extends StatefulWidget {
  const LeavingSccreen({super.key});

  @override
  State<LeavingSccreen> createState() => _LeavingSccreenState();
}

class _LeavingSccreenState extends State<LeavingSccreen> {
  bool isshown = false;
  bool calanderdisplay = false;
  late StreamSubscription<bool> keyboardSubscription;
  @override
  void initState() {
    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      isshown = visible;
    });
    super.initState();
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  TextEditingController controller = TextEditingController();
  SuggestionsController<String> close = SuggestionsController();

  void _selectDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );
    if (pickedDate != null) {}
  }

  Future<void> ShowBottom() {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      constraints: BoxConstraints(
          minHeight: !isshown
              ? MediaQuery.of(context).size.height * .75
              : MediaQuery.of(context).size.height * .15),
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: GestureDetector(
            onTap: () => close.close(),
            child: Container(
              height: !isshown
                  ? MediaQuery.of(context).size.height * .75
                  : MediaQuery.of(context).size.height * .15,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.close)),
                          ),
                          // TypeAheadField<String>(
                          //   itemBuilder: (context, value) {
                          //     return Text(value);
                          //   },
                          //   onSelected: (value) {},
                          //   builder: (context, controller, focusNode) {
                          //     return TextFormField(
                          //       decoration: InputDecoration(
                          //         suffixIcon: Icon(Icons.keyboard_arrow_down),
                          //         // fillColor: Color(0xFF808080),
                          //         focusedBorder: OutlineInputBorder(
                          //           borderRadius: BorderRadius.circular(8.0),
                          //           borderSide: BorderSide(
                          //             color: Color(0xFF808080),
                          //           ),
                          //         ),
                          //         enabledBorder: OutlineInputBorder(
                          //           borderRadius: BorderRadius.circular(8.0),
                          //           borderSide: BorderSide(
                          //             color: Color(0xFF808080),
                          //             width: 2.0,
                          //           ),
                          //         ),
                          //       ),
                          //     );
                          //   },
                          //   suggestionsCallback: (search) => [
                          //     "Casual",
                          //     "Holydays",
                          //     "Sick",
                          //   ],
                          // ),
                          Text(
                            "Leave Type",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .036),
                          ),
                          TypeAheadField<String>(
                            suggestionsCallback: (search) => [
                              "Casual",
                              "Holydays",
                              "Sick",
                            ],
                            suggestionsController: close,
                            builder: (context, controller, focusNode) {
                              return TextFormField(
                                  controller: controller,
                                  focusNode: focusNode,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.keyboard_arrow_down),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xFF808080),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: Color(0xFF808080),
                                        width: 1,
                                      ),
                                    ),
                                  ));
                            },
                            itemBuilder: (context, city) {
                              return ListTile(
                                title: Text(city),
                              );
                            },
                            onSelected: (city) {
                              print("object");
                            },
                          ),
                          Text(
                            "From date",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .036),
                          ),
                          TextFormField(
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                  onTap: () => _selectDate(),
                                  child: Icon(Icons.date_range)),
                              // fillColor: Color(0xFF808080),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF808080),
                                  width: 1,
                                ),
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF808080),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "To date",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .036),
                          ),
                          TextFormField(
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                  onTap: () => _selectDate(),
                                  child: Icon(Icons.date_range)),
                              // fillColor: Color(0xFF808080),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF808080),
                                  width: 1,
                                ),
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF808080),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "leaving days",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .036),
                          ),
                          TextFormField(
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                            decoration: InputDecoration(
                              // fillColor: Color(0xFF808080),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF808080),
                                  width: 1,
                                ),
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF808080),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .036),
                          ),
                          TextFormField(
                            minLines: 2,
                            maxLines: 3,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                            decoration: InputDecoration(
                              // fillColor: Color(0xFF808080),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF808080),
                                  width: 1,
                                ),
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Color(0xFF808080),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 24,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("done");
                              Navigator.pop(context);
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
                                  "Apply",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .04),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  )),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Attendance history"),
            leading: IconButton.filled(
              style: IconButton.styleFrom(backgroundColor: Color(0xFF014421)),
              color: Color(0xFF014421),
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                ShowBottom();
              },
            ),
            centerTitle: true,
            actions: [
              IconButton.filled(
                onPressed: () {
                  setState(() {
                    calanderdisplay = !calanderdisplay;
                  });
                },
                icon:
                    calanderdisplay ? Icon(Icons.date_range) : Icon(Icons.list),
                color: Colors.white,
                style: IconButton.styleFrom(backgroundColor: Color(0xFF014421)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 4),
                child: GestureDetector(
                  onTap: () {
                    Get.find<ScreenController>().selected.value = 4;
                  },
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * .05,
                    foregroundImage: AssetImage("Assets/Icon.png"),
                  ),
                ),
              ),
            ],
          ),
          body: calanderdisplay
              ? ListViewOfLeaving()
              : Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  child: Column(
                    children: [
                      Container(
                        width: constraints.maxWidth * .91,
                        height: MediaQuery.of(context).size.height * .32,
                        margin: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * .02),
                        child: SfDateRangePicker(
                          maxDate: DateTime.now(),
                          selectionMode: DateRangePickerSelectionMode.range,
                        ),
                      ),
                      Expanded(
                          // height: constraints.maxHeight * .46,
                          // width: constraints.maxWidth * .91,
                          child: ListView.builder(
                        itemBuilder: (context, index) {
                          return LeavingCard();
                        },
                        itemCount: 4,
                      ))
                    ],
                  ),
                ),
        );
      },
    );
  }
}
