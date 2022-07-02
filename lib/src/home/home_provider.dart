import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeProvider extends ChangeNotifier {
  int isSelect = 0;
  List<String> drawerList = [
    'Home',
    'Privacy',
    'Contact',
    'Share App',
    'Rating App',
    'About Us'
  ];
  List<IconData> iconList = [
    Icons.home,
    Icons.warning,
    Icons.contacts_sharp,
    Icons.share,
    Icons.star,
    Icons.message,
  ];
  changeColor(int isNotSelect) {
    isSelect = isNotSelect;
    notifyListeners();
  }

  var myNum = Random().nextInt(100).toString();
  List<String> image = [
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/188172260_841295836818525_2608005363781999130_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_eui2=AeH40L-E7aM6OvL-f-5nwWAlJs4WAHYZGh4mzhYAdhkaHtgLo3uaY3-Jk2UImo_y3uXCHeSsLRCNlBLFeRtw-tTE&_nc_ohc=y6osCIiWX4gAX9YYlqj&_nc_ht=scontent.fpew1-1.fna&oh=4772e10cb9f7103540fbb2692de65e19&oe=617D6294',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/188172260_841295836818525_2608005363781999130_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_eui2=AeH40L-E7aM6OvL-f-5nwWAlJs4WAHYZGh4mzhYAdhkaHtgLo3uaY3-Jk2UImo_y3uXCHeSsLRCNlBLFeRtw-tTE&_nc_ohc=y6osCIiWX4gAX9YYlqj&_nc_ht=scontent.fpew1-1.fna&oh=4772e10cb9f7103540fbb2692de65e19&oe=617D6294',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/188172260_841295836818525_2608005363781999130_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_eui2=AeH40L-E7aM6OvL-f-5nwWAlJs4WAHYZGh4mzhYAdhkaHtgLo3uaY3-Jk2UImo_y3uXCHeSsLRCNlBLFeRtw-tTE&_nc_ohc=y6osCIiWX4gAX9YYlqj&_nc_ht=scontent.fpew1-1.fna&oh=4772e10cb9f7103540fbb2692de65e19&oe=617D6294',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/188172260_841295836818525_2608005363781999130_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_eui2=AeH40L-E7aM6OvL-f-5nwWAlJs4WAHYZGh4mzhYAdhkaHtgLo3uaY3-Jk2UImo_y3uXCHeSsLRCNlBLFeRtw-tTE&_nc_ohc=y6osCIiWX4gAX9YYlqj&_nc_ht=scontent.fpew1-1.fna&oh=4772e10cb9f7103540fbb2692de65e19&oe=617D6294',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/225013544_896270264654415_7408587179274174829_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeExZb-gviRwiof3SKZu-EWs3IMqsstxMw7cgyqyy3EzDtBaelxB4S0FmTgn-nqo4qKLVpG2o5hezADB07oq-ghY&_nc_ohc=T4Tg8X_X8fEAX_BhIpe&_nc_ht=scontent.fpew1-1.fna&oh=7c5e2c16f9908dc839d22951e212bb16&oe=617CCD44',
    'https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-9/188172260_841295836818525_2608005363781999130_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_eui2=AeH40L-E7aM6OvL-f-5nwWAlJs4WAHYZGh4mzhYAdhkaHtgLo3uaY3-Jk2UImo_y3uXCHeSsLRCNlBLFeRtw-tTE&_nc_ohc=y6osCIiWX4gAX9YYlqj&_nc_ht=scontent.fpew1-1.fna&oh=4772e10cb9f7103540fbb2692de65e19&oe=617D6294',
  ];
  List<Widget> cont = [
    Container(),
    Container(),
    Container(
      color: Colors.red,
    ),
    Container(),
    Container(),
    Container(
      color: Colors.green,
    ),
    Container(),
    Container(),
    Container(
      color: Colors.yellow,
    ),
  ];
}
