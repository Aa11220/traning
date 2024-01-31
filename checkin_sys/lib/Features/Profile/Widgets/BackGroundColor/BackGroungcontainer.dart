import 'package:flutter/material.dart';

import 'BackgroundClipper.dart';

class BackGroundContiner extends StatefulWidget {
  const BackGroundContiner({super.key});

  @override
  State<BackGroundContiner> createState() => _BackGroundContinerState();
}

class _BackGroundContinerState extends State<BackGroundContiner> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BackgroundCliper(),
      child: Container(
        height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/BackGround.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
