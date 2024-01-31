// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LivingCard extends StatelessWidget {
  const LivingCard({
    Key? key,
    required this.time,
    required this.Typeof,
    required this.size,
  }) : super(key: key);
  final String time;
  final String Typeof;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: size, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 1),
          Text(
            Typeof,
            style: TextStyle(fontSize: size, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
