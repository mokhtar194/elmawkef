import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NotificationScreen extends GetResponsiveView{


  @override
  Widget? desktop() {

  }

  @override
  Widget? tablet() {

  }

  @override
  Widget? phone() {
    return Container(
      color: Colors.yellow,
      child: const Text("Notification App"),
    );
  }
}