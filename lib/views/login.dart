import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:get/get.dart';
import 'package:pledge/res/colors.dart';
import 'package:pledge/res/widget/button.dart';
import 'package:pledge/res/widget/textfields.dart';
//import 'package:pledge/views/home.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                        alignment: Alignment.center,
                        height: 132.h,
                        width: 276.w,
                      ),
                      SizedBox(
                        height: 120.h,
                      ),
                      getTextField(hint: 'Email'),
                      SizedBox(height: 20.h),
                      getTextField(
                        hint: 'Password',
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 214),
                        child: Text(
                          'Forget Password?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.BBlack.withOpacity(0.8)),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      getButton(hint: 'Login'),
                      SizedBox(height: 30.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            const Expanded(
                                child: Divider(
                              color: AppColors.WWhite,
                            )),
                            Text(
                              'Or signup with',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.WWhite.withOpacity(1)),
                            ),
                            const Expanded(
                                child: Divider(
                              color: AppColors.WWhite,
                            )),
                          ],
                        ),
                      ),
                      SizedBox(height: 49.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: AppColors.WWhite,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Image.asset(
                              'assets/Google search .png',
                              height: 22.h,
                              width: 22.w,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 50.h,
                            width: 50.w,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: AppColors.WWhite,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Image.asset(
                              'assets/facebook.png',
                              height: 22.h,
                              width: 22.w,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 50.h,
                            width: 50.w,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: AppColors.WWhite,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Image.asset(
                              'assets/apple.png',
                              height: 22.h,
                              width: 22.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 90.h,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don`t have an account',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.WWhite),
                          ),
                          Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.WWhite,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      )
                    ]))));
  }
}
