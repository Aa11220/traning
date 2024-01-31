import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/ScreenSelector.dart';

class HomeScreenHeader extends StatefulWidget {
  const HomeScreenHeader({super.key});

  @override
  State<HomeScreenHeader> createState() => _HomeScreenHeaderState();
}

class _HomeScreenHeaderState extends State<HomeScreenHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: 'Hey Ahmed !\n',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height * .04,
                wordSpacing: .25,
                fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: 'good morning mark your attendance',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: MediaQuery.of(context).size.height * .02)),
            ],
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            Get.find<ScreenController>().selected.value = 4;
          },
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.width * .08,
            foregroundImage: AssetImage("Assets/Icon.png"),
          ),
        )
      ],
    );
  }
}
