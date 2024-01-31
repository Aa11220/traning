import 'package:flutter/material.dart';

import 'ColumnofText.dart';

class LeavingCard extends StatelessWidget {
  const LeavingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
          color: Color(0xFFF7F7F7), borderRadius: BorderRadius.circular(16)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxHeight);
          print(constraints.minHeight);
          print("-----------------------");
          print(constraints.maxWidth);
          print(constraints.minWidth);
          return Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8),
                width: constraints.maxWidth / 6,
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    color: Color(0xFF014421),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "20",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: constraints.maxWidth * .03),
                    ),
                    Text(
                      "wed",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: constraints.maxWidth * .03),
                    )
                  ],
                ),
              ),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: constraints.maxHeight * .5,
                    width: constraints.maxWidth * 0.81,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LivingCard(
                          time: "12/01/2024",
                          Typeof: "from date",
                          size: constraints.maxWidth * .03,
                        ),
                        LivingCard(
                          time: "12/01/2024",
                          Typeof: "from date",
                          size: constraints.maxWidth * .03,
                        ),
                        LivingCard(
                          time: "12/01/2024",
                          Typeof: "from date",
                          size: constraints.maxWidth * .03,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: constraints.maxHeight * .44,
                    width: constraints.maxWidth * 0.81,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LivingCard(
                          time: "sick",
                          Typeof: "leave type",
                          size: constraints.maxWidth * .03,
                        ),
                        LivingCard(
                          time: "15",
                          Typeof: "balance",
                          size: constraints.maxWidth * .03,
                        ),
                      ],
                    ),
                  )
                  // Expanded(
                  //   child: Container(
                  //     width: constraints.minWidth * .8,
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(8)),
                  //     child: Align(
                  //       alignment: Alignment.centerLeft,
                  //       child: Padding(
                  //         padding:
                  //             EdgeInsets.only(left: constraints.maxWidth * .03),
                  //         child: Text(
                  //           "check in today 9:00",
                  //           style:
                  //               TextStyle(fontSize: constraints.maxWidth * .03),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ))
            ],
          );
        },
      ),
    );
  }
}
