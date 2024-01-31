import 'package:get/get.dart';

void showSnackbar(String Title, String Message) {
  Get.snackbar(
    Title,
    Message,
    snackPosition: SnackPosition.BOTTOM, // Optional: Adjust position
    duration: Duration(seconds: 3), // Optional: Customize duration
    // Other optional parameters:
    // backgroundColor, colorText, margin, borderRadius, etc.
  );
}
