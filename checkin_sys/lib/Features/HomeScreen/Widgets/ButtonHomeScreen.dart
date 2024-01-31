import 'dart:async';

import 'package:checkin_sys/Features/HomeScreen/Widgets/BottomSheet/Signout.dart';
import 'package:get/get.dart';

import '../../../Controller/DateController.dart';
import 'BottomSheet/ChossePlace.dart';
import 'BottomSheet/Waiting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'BottomSheet/AskForpermision.dart';
import 'BottomSheet/SelectedItem.dart';

class ButtonHomeScreen extends StatefulWidget {
  const ButtonHomeScreen({super.key});

  @override
  State<ButtonHomeScreen> createState() => _ButtonHomeScreenState();
}

class _ButtonHomeScreenState extends State<ButtonHomeScreen>
    with SingleTickerProviderStateMixin {
  late PageController _control;
  AnimationController? _animationController;
  late List<Widget> list_of_widget;
  @override
  void initState() {
    _control = PageController(initialPage: 0);

    list_of_widget = [
      ChoosenItem(controller: _control),
      AskForPermission(controller: _control),
      WaitingBottomSheet(control: _control),
      ChossePlace(),
    ];
    super.initState();
  }

  // void sheetbottom() {
  //   showModalBottomSheet(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
  //     ),
  //     backgroundColor: Colors.white,
  //     transitionAnimationController: _animationController,
  //     context: context,
  //     constraints: BoxConstraints(
  //       minHeight: MediaQuery.of(context).size.height * .48,
  //     ),
  //     builder: (context) {
  //       Timer(const Duration(milliseconds: 200), () {
  //         _control.animateToPage(1,
  //             duration: Duration(seconds: 1), curve: Curves.linear);
  //       });
  //       return PageView(
  //         controller: _control,
  //         physics: NeverScrollableScrollPhysics(),
  //         children: [
  //           WaitingBottomSheet(),
  //           ChoosenItem(controller: _control),
  //           AskForPermission(),
  //           ChossePlace()
  //         ],
  //       );
  //     },
  //   );
  // }
  void sheetbottom() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      backgroundColor: Colors.white,
      transitionAnimationController: _animationController,
      context: context,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * .48,
      ),
      builder: (context) {
        Timer(const Duration(milliseconds: 200), () {
          // _control.animateToPage(1,
          //     duration: Duration(seconds: 1), curve: Curves.linear);
        });
        return PageView(
          controller: _control,
          physics: NeverScrollableScrollPhysics(),
          children: Get.find<DateController>().islogedin.value == false
              ? list_of_widget
              : [
                  ChossePlaceLogout(controller: _control),
                  ChoosenItem(controller: _control),
                  AskForPermission(controller: _control),
                  WaitingBottomSheet(control: _control),
                  ChossePlace(),
                ],

          //  list_of_widget[2];

          // itemCount: list_of_widget.length,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          sheetbottom();
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.width * .5,
              decoration: BoxDecoration(
                  color: Color(0xFFEBEBEB), shape: BoxShape.circle),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF7F7F7), shape: BoxShape.circle),
              width: MediaQuery.of(context).size.width * .38,
              height: MediaQuery.of(context).size.width * .38,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFEBEBEB),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ]),
              width: MediaQuery.of(context).size.width * .3,
              height: MediaQuery.of(context).size.width * .3,
            ),
            Container(
              child: Column(
                children: [
                  SvgPicture.asset(
                    "Assets/Vector.svg",
                    width: MediaQuery.of(context).size.width * .08,
                    colorFilter: ColorFilter.mode(
                        !Get.find<DateController>().islogedin.value
                            ? Color(0xFF1F5B41)
                            : Color(0xFF7E0103),
                        BlendMode.srcIn),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    !Get.find<DateController>().islogedin.value
                        ? "check in"
                        : "check out",
                    style: TextStyle(
                        color: !Get.find<DateController>().islogedin.value
                            ? Color(0xFF1F5B41)
                            : Color(0xFF7E0103),
                        fontSize: MediaQuery.of(context).size.height * 0.02),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
