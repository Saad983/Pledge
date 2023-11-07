import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pledge/res/colors.dart';

Widget getotpField(
    {required String hint,
    double hintOpacity = 0.50,
    TextAlign textAlign = TextAlign.center,
    IconButton? suffixIcon}) {
  return Container(
    height: 56.h,
    width: 62.w,
    child: TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          filled: true,
          fillColor: AppColors.WWhite,
          hintText: hint,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          hintStyle: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: suffixIcon),
    ),
  );
}
