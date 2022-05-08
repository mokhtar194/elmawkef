import 'package:elmawkef_inc/app/controllers/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBottom extends GetResponsiveView<BottomNavigationController> {
  final bottomNavController = Get.put(BottomNavigationController());

  @override
  Widget? phone() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined), label: "Bookings"),
        BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline_rounded), label: "Chat"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "Notification"),
      ],
      currentIndex: bottomNavController.index.value,
      onTap: (int index) {
        bottomNavController.updateIndex(index);
      },
    );
  }
}
