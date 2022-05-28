import 'package:elmawkef_inc/app/models/gender.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxString selectedValue = 'toto'.obs;
  List<GenderModel> genders = [
    GenderModel("Male", Icons.male, false),
    GenderModel("Female", Icons.female, false)
  ];
  late RxBool becomePro;
  late RxInt counter;
  RxBool editMode = false.obs;

  @override
  void onInit() {
    becomePro = false.obs;
    counter = 0.obs;

  }

  void inc() {
    if (counter.value + 1 > 50) {
      counter.value = 50;
    } else {
      counter.value++;
    }
  }

  void dec() {
    if (counter.value - 1 < 0) {
      counter.value = 0;
    } else {
      counter.value--;
    }
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
