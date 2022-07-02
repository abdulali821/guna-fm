import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:guna_fm/src/home/home.dart';
import 'package:guna_fm/src/home/home_provider.dart';
import 'package:guna_fm/src/splashScreen/splash_screen.dart';
import 'package:guna_fm/src/splashScreen/splash_screen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () => GetMaterialApp(
          debugShowCheckedModeBanner: false, home: Splash_Screen()),
    ),
  );
}
