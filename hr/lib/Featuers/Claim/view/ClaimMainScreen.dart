import 'package:flutter/material.dart';
import 'package:hr/Utility/CommonColors.dart';

import '../../../Utility/CommonWidgets.dart/BackgroundDesign.dart';
import '../widgets/ListTIleForlist.dart';

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
        body: BackgroundDesignWidget(
          Mpadding: EdgeInsets.symmetric(vertical: 35, horizontal: 30),
          childforCon: ListView.builder(
              itemBuilder: (context, index) {
                return ListTileForlist();
              },
              itemCount: 12),
        ));
  }
}
