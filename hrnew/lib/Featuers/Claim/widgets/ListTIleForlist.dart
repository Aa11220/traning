// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../Utility/CommonColors.dart';
import '../view/ClaimDetailsScreen.dart';

class ListTileForlist extends StatelessWidget {
  const ListTileForlist({
    Key? key,
    required this.title,
    required this.name,
    required this.type,
  }) : super(key: key);
  final String title;
  final String name;
  final String type;
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
          title: Text(title),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              Text(type),
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
