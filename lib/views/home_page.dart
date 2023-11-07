import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:pledge/res/colors.dart';
import 'package:pledge/res/widget/textfields.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List<String> items = [
    'image1.jpg, st',
    'image2.jpg',
    'image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.SBlue,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: AppColors.SBlue,
          title: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                color: AppColors.WWhite,
                child: Image.asset(
                  'assets/menu.png',
                  height: 16.52,
                  width: 19.18,
                ),
              ),
              const SizedBox(
                width: 85,
              ),
              Image.asset(
                'assets/plump.png',
                height: 44,
                width: 94,
              ),
              const SizedBox(
                width: 85,
              ),
              Container(
                height: 40,
                width: 40,
                color: AppColors.WWhite,
                child: Image.asset(
                  'assets/notifications.png',
                  height: 16.52,
                  width: 19.18,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getTextField(
                  hint: 'Search here..',
                  prefixIcon: const Icon(Icons.search_rounded)),
              const SizedBox(
                height: 19,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'News & Popular',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.DBlue),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
             Image.asset('assets/Plupms.jpg',  )
            ],
          ),
        ),
      ),
    );
  }
}
