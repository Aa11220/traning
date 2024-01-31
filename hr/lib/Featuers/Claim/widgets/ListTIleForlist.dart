import 'package:flutter/material.dart';

import '../../../Utility/CommonColors.dart';

class ListTileForlist extends StatelessWidget {
  const ListTileForlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
          tileColor: bgTileandappti,
          title: Text("data"),
          leading: CircleAvatar(
            radius: MediaQuery.of(context).size.height * .04,
            backgroundColor: manicolor,
            foregroundImage: AssetImage(
                "Assets/ImagesandIcons/ClaimScreens/MainClaimScreen/client.png"),
          )),
    );
  }
}
