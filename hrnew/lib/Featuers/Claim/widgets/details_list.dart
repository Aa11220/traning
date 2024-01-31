import 'package:flutter/material.dart';

class DetailsList extends StatelessWidget {
  const DetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "Date",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .03),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "CheQueNo",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .03),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Amount",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .03),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
