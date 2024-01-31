import 'package:buffalo_cashier/Featueres/HomeScreedn/Views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Featueres/HomeScreedn/Controller/Order_Controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(OrderController());
    return GetMaterialApp(
      title: 'BuffaloCashier',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
