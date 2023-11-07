import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pledge/res/colors.dart';
import 'package:pledge/res/widget/button.dart';
import 'package:pledge/res/widget/textfields.dart';
//import 'package:pledge/res/widget/otpField.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.SBlue,
        leading: const Icon(
          Icons.keyboard_backspace_outlined,
          color: AppColors.DBlue,
          size: 30,
        ),
        leadingWidth: 80.w,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.SBlue, AppColors.LBlue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/plump.png',
              height: 132.h,
              width: 276.w,
            ),
            SizedBox(
              height: 120.h,
            ),
            getTextField(
                hint: 'Name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                )),
            SizedBox(height: 20.h),
            getTextField(
                hint: 'Email',
                suffixIcon:
                    IconButton(onPressed: () {}, icon: Icon(Icons.mail))),
            SizedBox(height: 20.h),
            getTextField(
              hint: 'Password',
            ),
            SizedBox(height: 20.h),
            getTextField(hint: 'Confirm Password'),
            SizedBox(height: 31.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 39.h),
              child: Container(
                height: 56.h,
                width: 350.w,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [AppColors.DBlue, Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: getButton(hint: 'Signup'),
              ),
            ),
            SizedBox(height: 90.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 75.h),
              child: Row(
                children: [
                  Text(
                    'Already Have an account?',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    'Login Today',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2.0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 34.h,
            )
          ],
        ),
      ),
    ));
  }
}
