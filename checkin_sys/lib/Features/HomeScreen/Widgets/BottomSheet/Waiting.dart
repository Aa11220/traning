import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../Controller/DateController.dart';

class WaitingBottomSheet extends StatefulWidget {
  const WaitingBottomSheet({super.key, required this.control});
  final PageController control;

  @override
  State<WaitingBottomSheet> createState() => _WaitingBottomSheetState();
}

class _WaitingBottomSheetState extends State<WaitingBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      lowerBound: 0.8,
      upperBound: 1.2,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 1), () {
      widget.control.jumpToPage(
          Get.find<DateController>().islogedin.value == false ? 3 : 4);
    });
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        height: constraints.maxHeight,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              children: [
                Container(
                  // height: 1,
                  width: constraints.maxWidth * 0.18,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1), color: Colors.black54),
                ),
                Expanded(child: SizedBox()),
                AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) => Center(
                    child: SvgPicture.asset(
                      "Assets/gis_location-poi-o.svg",
                      width: constraints.maxWidth * .27 + controller.value * 30,
                      height:
                          constraints.maxHeight * .25 + controller.value * 30,
                    ),
                  ),
                ),
                Expanded(child: SizedBox())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
