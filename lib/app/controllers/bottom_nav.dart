import 'package:elmawkef_inc/app/views/screens/bottom_nav/booking.dart';
import 'package:elmawkef_inc/app/views/screens/bottom_nav/chat.dart';
import 'package:elmawkef_inc/app/views/screens/bottom_nav/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/screens/bottom_nav/notification.dart';

class BottomNavigationController extends GetxController {
  late List<Widget> pages;
   late RxInt index;
  @override
  void onInit() {
    super.onInit();
    pages = [
      Home(),
      Booking(),
      Chat(),
      NotificationScreen(),
    ];
    index = 0.obs;
  }


  void updateIndex(int pos){
    index.value = pos;
    update();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
