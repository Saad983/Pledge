import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pledge/res/colors.dart';
import 'package:pledge/res/widget/button.dart';
import 'package:pledge/res/widget/otpField.dart';
//import 'package:pledge/res/widget/textfields.dart';
//import 'package:pledge/res/widget/textfields.dart';
//import 'package:pledge/res/widget/verifyTextfiled.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
              leadingWidth: 80,
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
                    width: 276,
                    height: 132.h,
                  ),
                  SizedBox(
                    height: 85.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 39),
                    child: Container(
                      height: 71.h,
                      width: 352,
                      child: const Text(
                        'We have sent you an email containing 6 digits verification code. Please enter the code to verify your identity',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.DBlue,
                          wordSpacing: 5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getotpField(
                          hint: '9',
                        ),
                        getotpField(hint: '2'),
                        getotpField(hint: '8'),
                        getotpField(hint: '0'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  getButton(hint: 'Continue'),
                  SizedBox(
                    height: 250.h,
                  )
                ],
              ),
            )));
  }
}
