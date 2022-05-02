import 'package:elmawkef_inc/app/views/screens/auth/otp_screen.dart';
import 'package:elmawkef_inc/app/views/screens/auth/signup.dart';
import 'package:elmawkef_inc/app/views/screens/home.dart';
import 'package:elmawkef_inc/app/views/screens/onboarding.dart';
import 'package:get/get.dart';
import 'routers.dart';

class Pages {
  static get route => <GetPage>[
    GetPage(
      name: AppRoutes.splash,
      page: () => DateAndTime(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => SignUp(),
      // middlewares: [Auth()],
    ),
    GetPage(
      name: AppRoutes.otp,
      page: () => OtpScreen(),
    ),
  ];
}

/**
 * 1- Define
 *  GetPage(
    name: '/profile/:user',
    page: () => UserProfile(),
    ),

    2- Send Data
    Get.toNamed("/profile/34954");

    3- Get Param
    Get.parameters['user'])
 */
