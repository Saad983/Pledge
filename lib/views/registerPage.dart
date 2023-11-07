import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pledge/res/colors.dart';
import 'package:pledge/res/widget/button.dart';
import 'package:pledge/res/widget/textfields.dart';
//import 'package:pledge/res/widget/otpField.dart';

class registryPage extends StatefulWidget {
  const registryPage({super.key});

  @override
  State<registryPage> createState() => _registryPageState();
}

class _registryPageState extends State<registryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.SBlue,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.SBlue,
          leading: const Icon(
            Icons.keyboard_backspace_outlined,
            color: AppColors.BBlack,
            size: 30,
          ),
          leadingWidth: 80,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150.h,
                width: 150.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    border: Border.all(color: AppColors.BBlack, width: 3.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(75),
                  child: Image.asset(
                    'assets/hand.png.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            getTextField(
                hint: 'Name',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person))),
            SizedBox(
              height: 20.h,
            ),
            getTextField(
                hint: 'Gender',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.transgender))),
            SizedBox(
              height: 20.h,
            ),
            getTextField(
                hint: 'Age',
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_outlined))),
            SizedBox(
              height: 20.h,
            ),
            getTextField(
                hint: 'Phone Number',
                suffixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.call))),
            SizedBox(
              height: 20.h,
            ),
            getTextField(
                hint: 'Location',
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on_sharp))),
            SizedBox(
              height: 150.h.h,
            ),
            getButton(hint: 'Create'),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}
