import 'dart:async';

import 'package:get/get.dart';
import 'package:location/location.dart';

class MyMapController extends GetxController {
  Rxn<LocationData> loc = Rxn<LocationData>();
  Rxn<StreamSubscription> locationStatus = Rxn<StreamSubscription>();
}
