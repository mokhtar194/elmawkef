
import 'package:elmawkef_inc/app/models/onboarding.dart';
import 'package:elmawkef_inc/app/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class OnboardingController extends GetxController {
  late List<OnboardModel> pages;
  late RxInt index;
  late RxInt currentIndex;
  late PageController pageController;

  @override
  void onInit() async {
    super.onInit();
    currentIndex = 0.obs;
    index = 0.obs;
    pageController = PageController();
    pages = [
      const OnboardModel(
          image: "assets/images/Onboarding1.png",
          title: "Quick and Easy Booking",
          description:
              "We offer a 3-step booking which solves your problem quickly and easily"),
      const OnboardModel(
          image: "assets/images/Onboarding2.png",
          title: "Sercurity and Professionalism",
          description:
              "All our domestic workers have transparent background and are well-trained "),
      const OnboardModel(
          image: "assets/images/Onboarding3.png",
          title: "Give your home a Wow feeling",
          description:
              "We care about every small details to sastisfy your needs when you use our service"),
    ];
  }

  void pageChange(int position) async {
    if (currentIndex.value == 2) {
      Get.offNamed(AppRoutes.signup);

    } else {
      currentIndex.value = position;
    }
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    pageController.dispose();
  }
}
