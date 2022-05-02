import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController phoneController;
  late final TextEditingController nameController;
  late String initialCountry;
  late PhoneNumber number;
  late final FirebaseAuth auth;

  @override
  void onInit() async {
    super.onInit();
    phoneController = TextEditingController();
    nameController = TextEditingController();
    initialCountry = 'MA';
    number = PhoneNumber(isoCode: 'MA');
    await Firebase.initializeApp();
    auth = FirebaseAuth.instance;
  }

  void verifyNumber(String phone) async {
    print("number is : $number");
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    phoneController.dispose();
    phoneController.dispose();
  }
}
