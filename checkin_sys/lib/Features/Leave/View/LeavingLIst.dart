import 'package:flutter/material.dart';

import '../Widgets/ActionTaken.dart';
import '../Widgets/CardView.dart';

class ListViewOfLeaving extends StatefulWidget {
  const ListViewOfLeaving({super.key});

  @override
  State<ListViewOfLeaving> createState() => _ListViewOfLeavingState();
}

class _ListViewOfLeavingState extends State<ListViewOfLeaving> {
  bool isrequest = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isrequest = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF014421),
                        ),
                        color: isrequest ? Color(0xFF014421) : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.07,
                      child: Center(
                        child: Text(
                          "Request  (20)",
                          style: TextStyle(
                              color:
                                  isrequest ? Colors.white : Color(0xFF014421),
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.width * .04),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isrequest = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF014421),
                      ),
                      color: isrequest ? Colors.white : Color(0xFF014421),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Center(
                      child: Text(
                        "Actions Taken",
                        style: TextStyle(
                            color: isrequest ? Color(0xFF014421) : Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width * .04),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Filter",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .02),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return isrequest ? CardLIst() : CardActionTaken();
              },
              itemCount: 2,
            ))
          ]),
        ),
      ),
    );
  }
}
