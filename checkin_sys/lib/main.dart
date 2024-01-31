import 'package:checkin_sys/Features/Signup/Views/Signup.dart';

import 'Controller/ScreenSelector.dart';
import 'Features/Login/view/ForgetPassword.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/DateController.dart';
import 'Features/HomeScreen/View/NavigatorScreen.dart';
import 'Features/Login/view/Login.dart';
import 'Features/Login/view/NewPassword.dart';
import 'Features/Login/view/Verification.dart';
import 'Features/Map/Controller/MapController.dart';
import 'Features/Profile/View/EditProfile.dart';
import 'Features/Profile/View/ProfileScreen.dart';
import 'Features/Signup/Views/SignupForm.dart';
import 'Features/Signup/Views/checkCode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(DateController());
    Get.put(ScreenController());
    Get.put(MyMapController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Login.path,
      routes: {
        ForgetPassword.Path: (context) => ForgetPassword(),
        Verification.Path: (context) => Verification(),
        NewPasswordSetter.Path: (context) => NewPasswordSetter(),
        Login.path: (context) => Login(),
        ProfileScreen.path: (context) => ProfileScreen(),
        NavigatorScreen.path: (context) => NavigatorScreen(),
        EditProfile.path: (context) => EditProfile(),
        SignupScreen.path: (context) => SignupScreen(),
        SignUpVarification.Path: (context) => SignUpVarification(),
        SignupForm.path: (context) => SignupForm()
      },
    );
  }
}
