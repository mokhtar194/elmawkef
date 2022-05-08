import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Booking extends GetResponsiveView{


  @override
  Widget? desktop() {

  }

  @override
  Widget? tablet() {

  }

  @override
  Widget? phone() {
    return Container(
      color: Colors.green,
      child: const Text("Bookings App"),
    );
  }
}