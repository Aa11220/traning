import 'package:flutter/material.dart';

import '../../Featuers/Claim/widgets/ListTIleForlist.dart';
import '../CommonColors.dart';
import '../CommonSizes.dart';

class BackgroundDesignWidget extends StatelessWidget {
  const BackgroundDesignWidget(
      {super.key,
      required this.childforCon,
      this.Mpadding =
          const EdgeInsets.symmetric(vertical: 35, horizontal: 30)});
  final Widget childforCon;
  final EdgeInsets Mpadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * heigthofappbarextendand,
        ),
        Expanded(
          child: Container(
              // height: 120,
              padding: Mpadding,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderradiosofbackground),
                  topRight: Radius.circular(borderradiosofbackground),
                ),
                color: listbackGroundcolor,
              ),
              child:
                  childforCon /* ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTileForlist();
                },
                itemCount: 12), */
              ),
        )
      ],
    );
  }
}
