import 'package:get/get.dart';

class DateController extends GetxController {
  var islogedin = false.obs;
  Rxn<DateTime> Checkin = Rxn<DateTime>();
  Rxn<DateTime> Chekout = Rxn<DateTime>();
  Rxn<Duration> duration = Rxn<Duration>();
  void SetStartDateTime(DateTime? checkin) {
    Checkin.value = checkin;
  }

  void SetEndDateTime(DateTime? chekout) {
    Chekout.value = chekout;
  }

  void calcDutation() {
    duration.value = Chekout.value!.difference(Checkin.value!);
    print(duration.value);
  }

  void resetdutation() {
    duration.value = null;
    print(duration.value);
  }
}
