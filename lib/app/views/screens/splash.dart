
import 'package:elmawkef_inc/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends GetResponsiveView {
  @override
  Widget? desktop() {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: screen.width * 0.35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 112,
              height: 112,
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            RichText(
              text: const TextSpan(
                text: "Elma",
                children: [
                  TextSpan(
                    text: "Wkef",
                    style: TextStyle(color: Colors.redAccent, fontSize: 52),
                  ),
                ],
                style: TextStyle(color: Colors.white, fontSize: 52),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget? tablet() {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: screen.width * 0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 112,
              height: 112,
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            RichText(
              text: const TextSpan(
                text: "Elma",
                children: [
                  TextSpan(
                    text: "Wkef",
                    style: TextStyle(color: Colors.redAccent, fontSize: 52),
                  ),
                ],
                style: TextStyle(color: Colors.white, fontSize: 52),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget? phone() {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: screen.width * 0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 86,
              height: 86,
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            RichText(
              text: const TextSpan(
                text: "Elma",
                children: [
                  TextSpan(
                    text: "Wkef",
                    style: TextStyle(color: Colors.redAccent, fontSize: 36),
                  ),
                ],
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            )
          ],
        ),
      ),
    );
  }
}
