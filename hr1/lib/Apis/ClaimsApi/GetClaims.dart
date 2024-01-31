import 'package:get/get.dart';

import 'package:hr1/Utility/TempConstents.dart';

import '../../Modules/Claims/ClaimModle.dart';
// import 'package';

class ClaimsApi extends GetxController {
  final Rx<List<ClaimsModule>> ClaimsData = Rx<List<ClaimsModule>>([]);
  final Rx<bool> IsLoading = RxBool(false);
  Future getAllClaim() async {
    IsLoading.value = true;
    try {
      final url = Uri.https(
        BaseUrl,
        "ExpensesMangment/getClaimExpenses",
      );
    } catch (e) {}
  }
}
