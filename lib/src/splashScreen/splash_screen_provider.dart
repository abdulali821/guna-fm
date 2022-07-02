import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guna_fm/customWidgets/customColors.dart';

class SplashProvider extends ChangeNotifier {
  var timer = Duration(seconds: 5);
  List<Widget> wid = [
    Container(),
    Container(
      width: 366.w,
      color: MyColors.grey,
      child: Center(child: Text('Control Image')),
    ),
  ];
}
