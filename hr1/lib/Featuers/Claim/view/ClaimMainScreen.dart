import 'package:flutter/material.dart';

import '../../../Utility/CommonColors.dart';
import '../../../Utility/CommonWidgets.dart/BackgroundDesign.dart';
import '../widgets/ListTIleForlist.dart';
import 'AddClaimScreen.dart';

class ClaimMainScreen extends StatelessWidget {
  const ClaimMainScreen({super.key});

  static const String routeName = '/claim_main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Claims List",
          style: TextStyle(color: bgTileandappti),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddClaimScreen.routeName);
        },
        backgroundColor: manicolor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: CircleBorder(),
      ),
      body: BackgroundDesignWidget(
        Mpadding: EdgeInsets.symmetric(vertical: 35, horizontal: 30),
        childforCon: Container(
          height: 50,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTileForlist();
            },
            itemCount: 12,
          ),
        ),
      ),
    );
  }
}
