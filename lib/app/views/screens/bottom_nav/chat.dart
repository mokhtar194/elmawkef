import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Chat extends GetResponsiveView{


  @override
  Widget? desktop() {
    
  }

  @override
  Widget? tablet() {
    
  }

  @override
  Widget? phone() {
    return Container(
      color: Colors.redAccent,
      child: const Text("Chat App"),
    );
  }
}