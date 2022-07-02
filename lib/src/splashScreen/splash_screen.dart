import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/utils.dart';
import 'package:guna_fm/customWidgets/customColors.dart';
import 'package:guna_fm/src/home/home.dart';
import 'package:guna_fm/src/home/home_provider.dart';
import 'package:guna_fm/src/splashScreen/splash_screen_provider.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  Splash_Screen({Key? key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

// ignore: camel_case_types
class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  nextPage() {
    Timer(Duration(seconds: 5), () {
      Get.off(ChangeNotifierProvider<HomeProvider>(
        create: (context) => HomeProvider(),
        child: Home(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 345.h,
                width: 360.w,
                decoration: BoxDecoration(
                    color: MyColors.blue,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(250.r))),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 120.h,
                  viewportFraction: 1,
                  pauseAutoPlayInFiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1),
                ),
                items: [
                  Container(),
                  Container(
                    width: 366.w,
                    color: MyColors.grey,
                    child: Center(child: Text('Control Image')),
                  ),
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return i;
                    },
                  );
                }).toList(),
              ),
              Container(
                height: 169.h,
                width: 360.w,
                decoration: BoxDecoration(
                    color: MyColors.blue,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(250.r))),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 318.h,
                width: 360.w,
                decoration: BoxDecoration(
                    color: MyColors.gunaFmPurple,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(250.r))),
                child: Image.asset(
                  'assets/images/gunafm.png',
                ),
              ),
              Container(
                height: 152.h,
                width: 360.w,
                decoration: BoxDecoration(
                    color: MyColors.gunaFmPurple,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(250.r))),
                child: Padding(
                  padding: EdgeInsets.only(top: 80.h, left: 160.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.language,
                        color: MyColors.white,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Gunafm.com',
                        style:
                            TextStyle(fontSize: 16.sp, color: MyColors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.h, left: 20.w),
            child: Container(
              height: 118.h,
              width: 132.w,
              decoration: BoxDecoration(
                  color: MyColors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(120.r)),
            ),
          ),
          Container(
            height: 98.h,
            width: 112.w,
            decoration: BoxDecoration(
                color: MyColors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(120.r)),
          ),
        ],
      ),
    );
  }
}

class ChangeNotifirProvider {}
