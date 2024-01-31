import 'package:flutter/material.dart';
import 'package:hr/ErrorHandling/OpResult.dart';
import 'package:hr/Featuers/Claim/view/ClaimMainScreen.dart';

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
      initialRoute: ClaimMainScreen.routeName,
      routes: {
        ClaimMainScreen.routeName: (context) => ClaimMainScreen(),
      },
    );
  }
}
