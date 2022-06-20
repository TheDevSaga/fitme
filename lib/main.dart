import 'package:fitme/routes/app_routes.dart';
import 'package:fitme/routes/routes.dart';
import 'package:fitme/style/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitMe',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      routes: AppRoutes.routes,
    );
  }
}
