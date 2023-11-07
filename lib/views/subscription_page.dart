import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pledge/res/colors.dart';
import 'package:pledge/res/widget/button.dart';
import 'package:pledge/res/widget/textfields.dart';

class subscription_page extends StatefulWidget {
  const subscription_page({super.key});

  @override
  State<subscription_page> createState() => _subscription_pageState();
}

class _subscription_pageState extends State<subscription_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.SBlue,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.h),
          child: AppBar(
            backgroundColor: AppColors.SBlue,
            elevation: 0,
            leading: const Icon(
              Icons.keyboard_backspace_sharp,
              //size: 30,
              color: AppColors.DBlue,
            ),
            //leadingWidth: 80.w,
            title: SizedBox(
              child: Text(
                'Subscription',
                style: TextStyle(color: AppColors.DBlue, fontSize: 18.sp),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 61.h, vertical: 34),
              child: Container(
                height: 409.h,
                width: 308.w,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [AppColors.DBlue, AppColors.WWhite],
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                        stops: [0.4, 0.6]),
                    borderRadius: BorderRadius.circular(17)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 23.w),
                      child: Text(
                        'Weekly Package',
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.WWhite),
                      ),
                    ),
                    SizedBox(
                      height: 53.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 22.w,
                        ),
                        Image.asset(
                          'assets/Icon awesome-check.png',
                          height: 8.48.h,
                          width: 11.37.w,
                        ),
                        SizedBox(width: 17.46.w),
                        Column(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, ',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            Text(
                              'consectetur adipiscing elit, sed do..',
                              style: TextStyle(fontSize: 14.sp),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        SizedBox(
                          width: 22.w,
                        ),
                        Image.asset(
                          'assets/Icon awesome-check.png',
                          height: 8.48.h,
                          width: 11.37.w,
                        ),
                        SizedBox(width: 17.46.w),
                        Column(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, ',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            Text(
                              'consectetur adipiscing elit, sed do..',
                              style: TextStyle(fontSize: 14.sp),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        SizedBox(
                          width: 22.w,
                        ),
                        Image.asset(
                          'assets/Icon awesome-check.png',
                          height: 8.48.h,
                          width: 11.37.w,
                        ),
                        SizedBox(width: 17.46.w),
                        Column(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, ',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            Text(
                              'consectetur adipiscing elit, sed do..',
                              style: TextStyle(fontSize: 14.sp),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 77.h),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.attach_money_rounded,
                            color: Colors.grey,
                          ),
                          Text(
                            '199',
                            style: TextStyle(
                                fontSize: 57,
                                color: AppColors.DBlue,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Per Month',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250.h,
            ),
            getButton(hint: 'Upgrade to Premium')
          ],
        ),
      ),
    );
  }
}
