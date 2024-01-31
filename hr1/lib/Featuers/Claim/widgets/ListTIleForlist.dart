import 'package:flutter/material.dart';

import '../../../Utility/CommonColors.dart';
import '../view/ClaimDetailsScreen.dart';

class ListTileForlist extends StatelessWidget {
  const ListTileForlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgTileandappti, borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(ClaimDetailsScreen.routeName);
          },
          title: Text("data"),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("name"),
              Text("Type"),
            ],
          ),
          // tileColor: bgTileandappti,
          trailing: Icon(Icons.keyboard_arrow_right),
          leading: CircleAvatar(
            radius: MediaQuery.of(context).size.height * .04,
            backgroundColor: manicolor,
            foregroundImage: AssetImage(
                "Assets/ImagesandIcons/ClaimScreens/MainClaimScreen/client.png"),
          )),
    );
  }
}
