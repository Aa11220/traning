import 'package:flutter/material.dart';

import 'Featuers/Claim/view/AddClaimScreen.dart';
import 'Featuers/Claim/view/ClaimDetailsScreen.dart';
import 'Featuers/Claim/view/ClaimMainScreen.dart';
import 'Featuers/Claim/view/ClaimMainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFF2895BE),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF2895BE),
        ),
      ),
      initialRoute: ClaimMainScreen.routeName /* Test.routeName */,
      routes: {
        ClaimMainScreen.routeName: (context) => ClaimMainScreen(),
        AddClaimScreen.routeName: (context) => AddClaimScreen(),
        ClaimDetailsScreen.routeName: (context) => ClaimDetailsScreen(),
      },
    );
  }
}
