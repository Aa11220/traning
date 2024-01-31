import 'package:flutter/material.dart';

class List_Title extends StatelessWidget {
  const List_Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              "Date",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height * .03),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "CheQueNo",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height * .03),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "Amount",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height * .03),
            ),
          ),
        ),
      ],
    );
  }
}
