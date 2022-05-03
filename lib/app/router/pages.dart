import 'package:elmawkef_inc/app/views/screens/auth/otp_screen.dart';
import 'package:elmawkef_inc/app/views/screens/auth/signup.dart';
import 'package:elmawkef_inc/app/views/screens/onboarding.dart';
import 'package:elmawkef_inc/app/views/screens/splash.dart';
import 'package:elmawkef_inc/app/views/screens/start.dart';
import 'package:get/get.dart';
import 'routers.dart';

class Pages {
  static get route => <GetPage>[
    GetPage(
      name: AppRoutes.splash,
      page: () => Splash(),

    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => SignUp(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 1),
      // middlewares: [Auth()],
    ),
    GetPage(
      name: AppRoutes.otp,
      page: () => OtpScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => Home(),
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
