import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreenClock extends StatefulWidget {
  const HomeScreenClock({super.key});

  @override
  State<HomeScreenClock> createState() => _HomeScreenClockState();
}

class _HomeScreenClockState extends State<HomeScreenClock> {
  String formattedTime = DateFormat("KK:mm").format(DateTime.now());
  String formattedDate = DateFormat("MMM d. yyyy EEEE").format(DateTime.now());
  late Timer _timer;
  void initState() {
    super.initState();
    _timer =
        Timer.periodic(const Duration(milliseconds: 1), (timer) => _update());
  }

  void _update() {
    setState(() {
      formattedTime = DateFormat('KK:m a').format(DateTime.now());
      formattedDate = DateFormat("MMM d. yyyy EEEE").format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(formattedTime,
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * .04)),
        SizedBox(
          height: 8,
        ),
        Text(formattedDate,
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * .01)),
      ]),
    );
  }
}
