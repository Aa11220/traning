// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemHomeScreen extends StatefulWidget {
  const ItemHomeScreen({
    Key? key,
    required this.image,
    required this.Title,
    required this.type,
  }) : super(key: key);
  final String image;
  final String Title;
  final String type;

  @override
  State<ItemHomeScreen> createState() => _ItemHomeScreenState();
}

class _ItemHomeScreenState extends State<ItemHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          widget.image,
          height: MediaQuery.of(context).size.height * .02875,
          width: MediaQuery.of(context).size.height * .02875,
        ),
        Text(
          widget.Title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: MediaQuery.of(context).size.width * .03),
        ),
        Text(
          widget.type,
          style: TextStyle(
              color: Colors.black45,
              fontSize: MediaQuery.of(context).size.width * .03),
        )
      ],
    );
  }
}
