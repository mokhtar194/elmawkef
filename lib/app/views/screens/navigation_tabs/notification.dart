import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NotificationScreen extends GetResponsiveView{


  @override
  Widget? phone() {
    return Container(
      color: Colors.yellow,
      child: const Text("Notification App"),
    );
  }
}