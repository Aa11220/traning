import 'package:flutter/material.dart';
import 'package:hr1/Featuers/Claim/widgets/input.dart';
import 'package:hr1/Utility/CommonColors.dart';
import 'package:hr1/Utility/CommonWidgets.dart/BackgroundDesign.dart';

class AddClaimScreen extends StatelessWidget {
  const AddClaimScreen({super.key});

  static const String routeName = '/claim_add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Add Expansess management",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BackgroundDesignWidget(
        childforCon: Container(
          color: listbackGroundcolor,
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  input(hint: "Select Employee"),
                  SizedBox(
                    height: 16,
                  ),
                  input(
                      hint: "claims", suffux: Icon(Icons.keyboard_arrow_down)),
                  SizedBox(
                    height: 16,
                  ),
                  input(
                    hint: "Select date",
                    suffux: Icon(Icons.date_range),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  input(
                      hint: "expensses purpose",
                      suffux: Icon(Icons.keyboard_arrow_down)),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  input(hint: "expensses amount"),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  input(hint: "cheque No?"),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  input(hint: "leave a note ...", mintext: 5),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 5,
                          backgroundColor: manicolor),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
