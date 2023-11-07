import 'package:flutter/material.dart';
import 'package:pledge/res/colors.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.SBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          height: 40.0,
          width: 40.0,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: EdgeInsets.all(5),
          color: Colors.white,
          child: Image.asset(
            'assets/menu.png',
            // scale: 0.5,
            height: 20,
            width: 16,
          ),
        ),
        title: Image.asset(
          'assets/plump.png',
          height: 44,
          width: 94,
        ),
        actions: [
          Container(
              height: 40,
              width: 40,
              color: Colors.white,
              child: Image.asset(
                'assets/Icon ionic-ios-notifications.png',
                height: 19.99,
                width: 15.98,
              ))
        ],
      ),
    ));
  }
}
