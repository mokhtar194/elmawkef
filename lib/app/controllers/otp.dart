import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  late final TextEditingController otpController;
  late final GlobalKey<FormState> formKey;
 late final FirebaseAuth auth ;

  @override
  void onInit() {
    super.onInit();
    otpController = TextEditingController();
    formKey = GlobalKey<FormState>();
    auth = FirebaseAuth.instance;
  }

  // void loginWithPhone() async {
  //   await auth.verifyPhoneNumber(
  //     phoneNumber: "+212" + phoneController.text.toString(),
  //     verificationCompleted: (PhoneAuthCredential credential) async {
  //       await auth.signInWithCredential(credential).then((value) {
  //         print("You are logged in successfully");
  //       });
  //     },
  //     verificationFailed: (FirebaseAuthException e) {
  //       print(e.message);
  //     },
  //     codeSent: (String verificationId, int? resendToken) {
  //       otpVisibility = true;
  //       verificationID = verificationId;
  //       setState(() {});
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {},
  //   );
  // }
  //
  // void verifyOTP() async {
  //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: verificationID, smsCode: otpController.text);
  //
  //   await auth.signInWithCredential(credential).then(
  //     (value) {
  //
  //     },
  //   ).whenComplete(
  //     () {
  //       // Navigator.pushReplacement(
  //       //   context,
  //       //   MaterialPageRoute(
  //       //     builder: (context) => Home(),
  //       //   ),
  //       // );
  //     },
  //   );
  // }

  @override
  void onReady() {}

  @override
  void onClose() {
    otpController.dispose();
  }
}
