import 'package:fitme/routes/routes.dart';
import 'package:fitme/views/dashboard/dashboard_screen.dart';
import 'package:fitme/views/onboarding/onboarding_screen.dart';
import 'package:fitme/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> get routes => {
        Routes.splash: (context) => const SplashScreen(),
        Routes.onboard: (context) => const OnBoardingScreen(),
        Routes.dashboard: (context) => const DashboardScreen(),
      };
}
