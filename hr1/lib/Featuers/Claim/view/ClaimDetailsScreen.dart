import 'package:flutter/material.dart';
import 'package:hr1/Featuers/Claim/widgets/input.dart';
import 'package:hr1/Utility/CommonColors.dart';

import '../../../Utility/CommonWidgets.dart/BackgroundDesign.dart';
import '../widgets/data_view.dart';

class ClaimDetailsScreen extends StatefulWidget {
  ClaimDetailsScreen({super.key});
  static const String routeName = '/claim_details';

  @override
  State<ClaimDetailsScreen> createState() => _ClaimDetailsScreenState();
}

class _ClaimDetailsScreenState extends State<ClaimDetailsScreen> {
  List<String> items = ["initialized", "submitted", "paid", "canceled"];
  String selectedItem = "initialized";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Expansess details",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BackgroundDesignWidget(
        Mpadding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        childforCon: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Created By",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * .025),
              ),
              SizedBox(
                height: 6,
              ),
              input(hint: "hint"),
              SizedBox(
                height: 10,
              ),
              DataView(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Row(
                children: [
                  Text(
                    "Submitted by",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.height * .025,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Enployee Name at",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .025,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    width: MediaQuery.of(context).size.width * .35,
                    // height: MediaQuery.of(context).size.height * .2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: DropdownButton<String>(
                        value: selectedItem,
                        isExpanded: true,
                        items: items
                            .map((value) => DropdownMenuItem<String>(
                                  child: Text(value),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value!;
                          });
                        }),
                  ),
                  buttoninclalimdetails()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class buttoninclalimdetails extends StatelessWidget {
  const buttoninclalimdetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: manicolor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width * .35,
        child: Center(
            child: Text(
          "Submit",
          style: TextStyle(color: Colors.white),
        )),
        // height: MediaQuery.of(context).size.height * .2,
      ),
    );
  }
}
