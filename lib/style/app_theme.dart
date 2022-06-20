import 'package:fitme/style/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData.dark().copyWith(
      backgroundColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.black,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      }));
}
