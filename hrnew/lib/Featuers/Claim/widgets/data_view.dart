import 'package:flutter/material.dart';

import 'details_list.dart';
import 'list__title.dart';
import 'total.dart';
// import 'package:hr1/Featuers/Claim/widgets/details_list.dart';
// import 'package:hr1/Featuers/Claim/widgets/list__title.dart';
// import 'package:hr1/Featuers/Claim/widgets/total.dart';

class DataView extends StatelessWidget {
  const DataView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      height: MediaQuery.of(context).size.height * .45,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          List_Title(),
          Divider(),
          DetailsList(),
          Divider(),
          Total(),
          
        ],
      ),
    );
  }
}
