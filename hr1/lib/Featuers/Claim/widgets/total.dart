import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total",
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * .03),
          ),
          Text(
            "Total",
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * .03),
          )
        ],
      ),
    );
  }
}
