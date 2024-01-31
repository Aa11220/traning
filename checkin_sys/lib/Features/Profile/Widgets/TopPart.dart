import 'package:flutter/material.dart';

import 'BackGroundColor/BackGroungcontainer.dart';

class TopPart extends StatefulWidget {
  const TopPart({super.key});

  @override
  State<TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<TopPart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Stack(
        children: [
          BackGroundContiner(),
          Positioned(
            height: MediaQuery.of(context).size.height * .25,
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * .25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("Assets/Icon.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
