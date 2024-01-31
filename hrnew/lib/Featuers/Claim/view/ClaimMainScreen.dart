import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Apis/ClaimsApi/GetClaims.dart';
import '../../../Utility/CommonColors.dart';
import '../../../Utility/CommonWidgets.dart/BackgroundDesign.dart';
import '../widgets/ListTIleForlist.dart';
import 'AddClaimScreen.dart';

class ClaimMainScreen extends StatefulWidget {
  const ClaimMainScreen({super.key});

  static const String routeName = '/claim_main';

  @override
  State<ClaimMainScreen> createState() => _ClaimMainScreenState();
}

class _ClaimMainScreenState extends State<ClaimMainScreen> {
  @override
  void initState() {
    Get.find<ClaimsApi>().getAllClaim().then((value) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Claims List",
          style: TextStyle(color: bgTileandappti),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddClaimScreen.routeName);
        },
        backgroundColor: manicolor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: CircleBorder(),
      ),
      body: BackgroundDesignWidget(
        Mpadding: EdgeInsets.symmetric(vertical: 35, horizontal: 30),
        childforCon: Obx(() {
          print(Get.find<ClaimsApi>().ClaimsData.value.length);

          return Get.find<ClaimsApi>().IsLoading.value == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  height: 50,
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTileForlist(
                          title: Get.find<ClaimsApi>()
                              .ClaimsData
                              .value[index]
                              .reference,
                          name: Get.find<ClaimsApi>()
                              .ClaimsData
                              .value[index]
                              .employee
                              .employeeName,
                          type: Get.find<ClaimsApi>()
                              .ClaimsData
                              .value[index]
                              .status,
                        );
                      },
                      itemCount: Get.find<ClaimsApi>().ClaimsData.value.length),
                );
        }),
      ),
    );
  }
}
