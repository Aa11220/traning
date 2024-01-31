import 'dart:convert';

import 'package:http/http.dart' as http;
// import 'package:hr1/Utility/TempConstents.dart';

import 'package:get/get.dart';

import '../../ErrorHandling/OpResult.dart';
import '../../Modules/Claims/ClaimModle.dart';
import '../../Utility/TempConstents.dart';
// import 'package';

class ClaimsApi extends GetxController {
  final Rx<List<ClaimsModule>> ClaimsData = Rx<List<ClaimsModule>>([]);
  final Rx<bool> IsLoading = RxBool(false);
  Future<OpResult> getAllClaim() async {
    print("Getting all claims");
    IsLoading.value = true;
    List<ClaimsModule> temp = [];
    try {
      final url = Uri.https(
        BaseUrl,
        "/api/ExpensesMangment/getClaimExpenses",
      );
      final response = await http.get(url, headers: {
        "Authorization": "Bearer ${tokken}",
        "Accept": "application/json"
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        final decodedresoposne = json.decode(response.body);
        for (var element in decodedresoposne) {
          temp.add(ClaimsModule.fromJson(element));
        }
        ClaimsData.value = temp;
        IsLoading.value = false;
        return successed<List<ClaimsModule>>(result: temp);
      }
      IsLoading.value = false;
      return OpFailed(msg: response.body);
    } catch (e) {
      IsLoading.value = false;
      print(e.toString());
      return OpFailed(msg: e.toString());
    }
  }
}
