import 'package:flutter/material.dart';
import 'package:pledge/res/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => Splash_ScreenState();
}

// ignore: camel_case_types
class Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.LBlue, AppColors.SBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (Image.asset(
            'assets/plump.png',
            height: 154.h,
            width: 320.w,
          )),
          SizedBox(
            height: 238.h,
          ),
          Image.asset(
            'assets/Spectrum.png',
            height: 81.h,
            width: 253.h,
          ),
          SizedBox(
            height: 93.h,
          ),
        ],
      ),
    ));
  }
}
