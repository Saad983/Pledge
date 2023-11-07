import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pledge/res/colors.dart';
import 'package:pledge/res/widget/button.dart';
import 'package:pledge/res/widget/textfields.dart';

class emailVerify extends StatefulWidget {
  const emailVerify({super.key});

  @override
  State<emailVerify> createState() => _emailVerifyState();
}

class _emailVerifyState extends State<emailVerify> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            backgroundColor: AppColors.SBlue,
            elevation: 0,
            leading: const Icon(
              Icons.keyboard_backspace_outlined,
              size: 30,
              color: AppColors.DBlue,
            ),
            leadingWidth: 80.w,
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.SBlue, AppColors.LBlue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
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
                  hint: 'Email',
                  suffixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.mail))),
              SizedBox(
                height: 30.h,
              ),
              getButton(hint: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
