import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:guna_fm/customWidgets/customColors.dart';
import 'package:guna_fm/src/gunaFm/guna_fm.dart';
import 'package:guna_fm/src/gunaFm/guna_fm_provider.dart';
import 'package:guna_fm/src/home/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = StoryController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, data, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.gunaFmPurple,
        ),
        body: Stack(children: [
          Container(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 400.h,
                  width: 400.w,
                  child: StoryView(
                      inline: true,
                      repeat: true,
                      storyItems: [
                        StoryItem.pageImage(
                          imageFit: BoxFit.fitWidth,
                          url:
                              'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
                          controller: controller,
                        ),
                        StoryItem.pageImage(
                          imageFit: BoxFit.fitWidth,
                          url:
                              'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
                          controller: controller,
                        ),
                        StoryItem.pageImage(
                          imageFit: BoxFit.fitWidth,
                          url:
                              'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
                          controller: controller,
                        ),
                        StoryItem.pageImage(
                          imageFit: BoxFit.fitWidth,
                          url:
                              'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
                          controller: controller,
                        ),
                        StoryItem.pageImage(
                          imageFit: BoxFit.fitWidth,
                          url:
                              'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
                          controller: controller,
                        ),
                        StoryItem.pageImage(
                          imageFit: BoxFit.fitWidth,
                          url:
                              'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
                          controller: controller,
                        ),
                      ],
                      controller: controller),
                ),
                Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                      color: MyColors.gunaFmPurple,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r))),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Container(
                    height: 20.h,
                    width: 384.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r),
                      ),
                      color: MyColors.lightBlue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 12.h,
                              width: 16.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.r),
                                color: MyColors.darkBlack,
                              ),
                              child: Center(
                                child: Text(
                                  'AD',
                                  style: TextStyle(
                                      fontSize: 8.sp, color: MyColors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Paid Promotion Ads',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              data.myNum + 'k',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Icon(Icons.remove_red_eye),
                            SizedBox(
                              width: 8.w,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Container(
                    height: 250.h,
                    width: 294.w,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        height: 500.h,
                        viewportFraction: 1,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 1),
                      ),
                      items: data.cont.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return i;
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 90.h),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(ChangeNotifierProvider<GunaFmProvider>(
                          create: (context) => GunaFmProvider(),
                          child: GunaFM()));
                    },
                    child: Container(
                      height: 70.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              MyColors.white.withOpacity(0.5),
                              MyColors.blue.withOpacity(0.5),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                                color: MyColors.gunaFmPurple,
                                borderRadius: BorderRadius.circular(100.r)),
                            child: Icon(Icons.play_arrow,
                                color: MyColors.white, size: 40.sp),
                          ),
                          Text(
                            'Guna FM',
                            style: TextStyle(
                                color: MyColors.white,
                                fontSize: 30.sp,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 320.w,
                  color: Colors.grey,
                  child: Center(
                      child: Text(
                    'Google ads',
                    style: TextStyle(
                        color: MyColors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
        ]),
        drawer: Drawer(
          child: Container(
            color: MyColors.gunaFmPurple,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 135.h,
                  width: 135.w,
                  child: Image.asset('assets/images/gunafm.png'),
                ),
                Divider(
                  endIndent: 10,
                  indent: 10,
                  thickness: 1,
                  color: MyColors.white,
                ),
                ListView.builder(
                    itemCount: data.drawerList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          data.changeColor(index);
                        },
                        child: Container(
                          width: 225.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80.r),
                            color: data.isSelect == index
                                ? MyColors.white
                                : MyColors.gunaFmPurple,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Icon(
                                data.iconList[index],
                                color: data.isSelect == index
                                    ? MyColors.gunaFmPurple
                                    : MyColors.white,
                                size: 30.sp,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                data.drawerList[index],
                                style: TextStyle(
                                    color: data.isSelect == index
                                        ? MyColors.gunaFmPurple
                                        : MyColors.white,
                                    fontSize: 18.sp),
                              ),
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
