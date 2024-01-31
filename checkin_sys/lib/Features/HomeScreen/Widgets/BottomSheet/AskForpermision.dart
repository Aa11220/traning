import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:location/location.dart';

import '../../../../Controller/DateController.dart';
import '../../../../Utility/Constrains.dart';
import '../../../Map/Controller/MapController.dart';

class AskForPermission extends StatefulWidget {
  const AskForPermission({super.key, required this.controller});
  final PageController controller;

  @override
  State<AskForPermission> createState() => _AskForPermissionState();
}

class _AskForPermissionState extends State<AskForPermission> {
  void LocationRequest() async {
    Get.find<MyMapController>().loc.value = null;
    Get.find<MyMapController>().locationStatus.value?.cancel();
    Get.find<MyMapController>().locationStatus.value = null;
    print("object");
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;
    _serviceEnabled = await location.serviceEnabled();
    print(_serviceEnabled);
    _permissionGranted = await location.hasPermission();
    print(_permissionGranted);
    if (_permissionGranted == PermissionStatus.granted &&
        _serviceEnabled == true) {
      widget.controller.jumpToPage(
          Get.find<DateController>().islogedin.value == false ? 2 : 3);
    } else if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      return;
    } else if (_serviceEnabled == false) {
      _serviceEnabled = await location.requestService();
      return;
    }
    _locationData = await location.getLocation();
    Get.find<MyMapController>().loc.value = _locationData;
    location.enableBackgroundMode(enable: true);
    location.changeSettings(accuracy: LocationAccuracy.high);
    location.changeSettings(interval: 5000, distanceFilter: 5);
    print(Get.find<MyMapController>().loc.value);
    Get.find<MyMapController>().locationStatus.value =
        location.onLocationChanged.distinct().listen(
      (LocationData currentLocation) {
        Get.find<MyMapController>().loc.value = currentLocation;
        // Get.snackbar("title", "message");
        print("----------------------------------------------");
        print(currentLocation.accuracy);
        print(currentLocation.isMock);
        print(currentLocation.latitude);
        print(currentLocation.longitude);
        print("object");
        print("----------------------------------------------");
      },
    );
    // Timer.periodic(Duration(microseconds: 100), (timer) async {
    //   _locationData = await location.getLocation();
    //   Get.find<MyMapController>().loc.value = _locationData;
    //   print("object");
    // });
    // --------------------------------------------------------
/*     bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    permission = await Geolocator.checkPermission();
    print(serviceEnabled);
    print(permission);
    if ((permission == LocationPermission.whileInUse ||
            permission == LocationPermission.always) &&
        serviceEnabled == true) {
      widget.controller.jumpToPage(2);
    } else if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      return;
    } else if (serviceEnabled == false) {
      serviceEnabled = await Geolocator.openLocationSettings();

      return;
    }
    
    final LocationSettings locationSettings = AndroidSettings(
      accuracy: LocationAccuracy.high,
      
      distanceFilter: 100,
      forceLocationManager: true,
      intervalDuration: const Duration(seconds: 10),
      //(Optional) Set foreground notification config to keep the app alive
      //when going to the background
      foregroundNotificationConfig: const ForegroundNotificationConfig(
        notificationText:
            "Example app will continue to receive your location even when you aren't using it",
        notificationTitle: "Running in Background",
        enableWakeLock: true,
      ),
    );

    StreamSubscription<Position> positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position? position) {
      print(position == null
          ? 'Unknown'
          : '${position.latitude.toString()}, ${position.longitude.toString()}');
      print("object");
    }); */
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        height: constraints.maxHeight,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              children: [
                Container(
                  // height: 1,
                  width: constraints.maxWidth * 0.18,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black54),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * .06,
                ),
                SvgPicture.asset(
                  "Assets/gis_location-poi-o.svg",
                  width: constraints.maxWidth * .27,
                  height: constraints.maxHeight * .25,
                ),
                SizedBox(
                  height: constraints.maxHeight * .06,
                ),
                Text("Enable your location",
                    style: TextStyle(
                        fontSize: constraints.maxWidth / 20,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 8,
                ),
                Text(
                    "this app requires that location services are turned on your device and for this app you must enable them in settings before using this app",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: constraints.maxWidth / 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black45)),
                SizedBox(
                  height: constraints.maxHeight * .06,
                ),
                Container(
                  width: constraints.maxWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      LocationRequest();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: BackgroundColor,
                      padding: EdgeInsets.all(16),
                      // minimumSize: const Size.fromHeight(50),
                    ),
                    child: Text(
                      "allow only while using this app",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        if (mounted) {
                          // Check if the context is still valid
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text(
                        "don't allow this app",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
