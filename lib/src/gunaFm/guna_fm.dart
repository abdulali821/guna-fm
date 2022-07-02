import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:guna_fm/customWidgets/customColors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guna_fm/src/gunaFm/guna_fm_provider.dart';
import 'package:provider/provider.dart';

class GunaFM extends StatefulWidget {
  GunaFM({Key? key}) : super(key: key);

  @override
  _GunaFMState createState() => _GunaFMState();
}

class _GunaFMState extends State<GunaFM> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GunaFmProvider>(
      builder: (context, data, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.gunaFmPurple,
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: MyColors.gunaFmPurple,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.r),
                          bottomRight: Radius.circular(40.r))),
                ),
                Container(
                  height: 387.h,
                  width: 384.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  )),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 500.h,
                    ),
                    items: data.image.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(40.r),
                            child: Container(
                                width: 400.w,
                                child: Image.network(
                                  i,
                                  fit: BoxFit.fill,
                                )),
                          );
                        },
                      );
                    }).toList(),
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
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 60.w, right: 60.w),
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
          ],
        ),
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
