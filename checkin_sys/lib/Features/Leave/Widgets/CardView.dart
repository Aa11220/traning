import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class CardLIst extends StatefulWidget {
  const CardLIst({super.key});

  @override
  State<CardLIst> createState() => _CardLIstState();
}

class _CardLIstState extends State<CardLIst> {
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
                                  "Save Changes",
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "Casual",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width * .04),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .19,
                child: Text(
                  "Apply Date: ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.width * .035,
                      color: Color(0xFF848484)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text(
                "2024-01-12",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .035,
                    color: Color(0xFF848484)),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .19,
                child: Text(
                  "from date:  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.width * .035,
                      color: Color(0xFF848484)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text(
                "2024-01-12",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .035,
                    color: Color(0xFF848484)),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .19,
                child: Text(
                  "to date :  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.width * .035,
                      color: Color(0xFF848484)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text(
                "2024-01-12",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .035,
                    color: Color(0xFF848484)),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .19,
                child: Text(
                  "leave days :  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.width * .035,
                      color: Color(0xFF848484)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text(
                "2024-01-12",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .035,
                    color: Color(0xFF848484)),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .19,
                child: Text(
                  "balance :  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.width * .035,
                      color: Color(0xFF848484)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text(
                "2024-01-12",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .035,
                    color: Color(0xFF848484)),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: GestureDetector(
                  onTap: () {
                    ShowBottom();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF014421),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.07,
                    child: Center(
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width * .04),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF800000),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width * .04),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
