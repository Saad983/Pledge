import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pledge/res/colors.dart';

Widget getButton({required String hint}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Container(
      height: 56.h,
      width: 350.w,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [AppColors.DBlue, AppColors.BBlack],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          hint,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.WWhite,
            fontSize: 19,
          ),
        ),
      ),
    ),
  );
}
