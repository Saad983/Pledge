import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:pledge/views/Sign_up.dart';
//import 'package:pledge/views/login.dart';
//import 'package:pledge/views/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pledge/views/EmailVerify.dart';
import 'package:pledge/views/Sign_up.dart';
import 'package:pledge/views/home_page.dart';
import 'package:pledge/views/login.dart';
import 'package:pledge/views/passwordPage.dart';
import 'package:pledge/views/registerPage.dart';
import 'package:pledge/views/splash_screen.dart';
import 'package:pledge/views/Sign_up.dart';
import 'package:pledge/views/registerPage.dart';
import 'package:pledge/views/Sign_up.dart';
import 'package:pledge/views/home_page.dart';
import 'package:pledge/views/splash_screen.dart';
import 'package:pledge/views/splash_screen.dart';
import 'package:pledge/views/subscription_page.dart';
//import 'package:pledge/views/test.dart';
import 'package:pledge/views/verification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        builder: (context, child) {
          return const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: subscription_page(),
          );
        });
  }
}
