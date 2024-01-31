import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
// import 'package:geolocator/geolocator.dart';

import '../../../Controller/ScreenSelector.dart';
import '../Controller/MapController.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool _isLoading = true;
  final Destination = LatLng(31.25746609164643, 32.30840436252514);
  @override
  void initState() {
    super.initState();
    // getlocation();
  }

  // getLocation() async {
  //   LocationPermission permission;
  //   permission = await Geolocator.requestPermission();

  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);
  //   double lat = position.latitude;
  //   double long = position.longitude;

  //   LatLng location = LatLng(lat, long);

  //   setState(() {
  //     _currentPosition = location;
  //     _isLoading = false;
  //   });

  // }
  final mapController = MapController();
  LocationData? GetCurrentLocation;
  void getlocation() {
    Location loca = Location();
    loca.getLocation().then((value) {
      GetCurrentLocation = value;
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    });

    // loca.onLocationChanged.listen((event) {
    //   GetCurrentLocation = event;
    //   print("stillwork");

    //   mapController.move(
    //       LatLng(GetCurrentLocation!.latitude!, GetCurrentLocation!.longitude!),
    //       13);
    //   if (mounted) {
    //     setState(() {});
    //   }
    // });
    Timer.periodic(Duration(seconds: 2), (timer) {
      loca.getLocation().then((value) {
        GetCurrentLocation = value;
        print("worker");
        if (mounted) {
          setState(() {});
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Map"),
          leading: SizedBox(),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 4),
              child: GestureDetector(
                onTap: () {
                  Get.find<ScreenController>().selected.value = 4;
                },
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * .05,
                  foregroundImage: AssetImage("Assets/Icon.png"),
                ),
              ),
            ),
          ],
        ),
        body: Obx(() => Get.find<MyMapController>().loc.value == null
            ? Center(
                child: Text(
                    "We care about you privacy so we collect your location when you Punch in only"))
            : FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  keepAlive: true,
                  initialCenter: LatLng(
                      Get.find<MyMapController>().loc.value!.latitude!,
                      Get.find<MyMapController>().loc.value!.longitude!),
                  initialZoom: 12,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                  MarkerLayer(markers: [
                    Marker(
                      point: LatLng(
                          Get.find<MyMapController>().loc.value!.latitude!,
                          Get.find<MyMapController>()
                              .loc
                              .value!
                              .longitude!), // Marker position
                      child: Icon(Icons.pin_drop,
                          color: Colors.red), // Marker icon
                      alignment: Alignment.center,
                      // Marker alignment
                      // Optional tap listener
                    ),
                    Marker(
                      point: Destination, // Marker position
                      child: Icon(Icons.pin_drop,
                          color: Colors.red), // Marker icon
                      alignment: Alignment.center, // Marker alignment
                      // Optional tap listener
                    ),
                  ]),
                ],
              )));
  }
}
